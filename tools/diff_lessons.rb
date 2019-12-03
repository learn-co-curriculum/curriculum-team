#!/usr/bin/env ruby
require 'json'
require 'pp'
require 'pry'
require 'byebug'
require 'net/http'

class Track
  API_BASE = "https://learn.co/api/v1/tracks/"

  def initialize(cli_specifier)
    track_id, filter_string = *cli_specifier.split(':')

    @opts = {}
    @debug = false

    @opts[:filter] = Array(String(filter_string).split(','))

    @orig_src = Net::HTTP.get(URI(API_BASE + track_id))
    @src = JSON.parse(@orig_src)

    # Trade space for O(1)
    @gh_to_title_map = {}
    @title_to_gh_map = {}

    filter_units
  end

  def topics
    @src["children"]
  end

  def topic_names
    topics.map{ |t| t["title"] }
  end

  def filter_units
    unit_names = @opts[:filter].empty? ? topic_names : @opts[:filter]

    @src = unit_names.each_with_object({}) do |unit_name, memo|
      memo[unit_name] = topics.find{ |t| t["title"] == unit_name }
    end
  end

  def to_json
    @src.to_json
  end

  def lessons
    @lessons ||= recurse_to_leaves(@src.values, [], 0)
  end

  def lesson_urls
    lessons.map{ |x| x[:github_url] }
  end

  def title_for(url)
    @gh_to_title_map[url]
  end

  def lesson_titles
    lessons.map{ |x| x[:title] }
  end

  def lesson_count
    lessons.count
  end

  def &(overlapper)
    self.lesson_urls & overlapper.lesson_urls
  end

  def -(subtrahend)
    self.lesson_urls - subtrahend.lesson_urls
  end

  private

  def recurse_to_leaves(start, accum, depth)
    start.each do |struc|
      if struc["children"].empty? and struc.has_key?("github_url")
        puts(" " * depth + "Accumulating #{struc["title"]}") if @debug

        accum.push({ title: struc["title"], github_url: struc["github_url"] })
        @gh_to_title_map[struc["github_url"]] = struc["title"]
        @title_to_gh_map[struc["title"]] = struc["github_url"]
      else
        puts(" " * depth + "Recursing #{struc["title"]}") if @debug

        struc["children"].each do |c|
          recurse_to_leaves(c["children"], accum, depth + 1)
        end
      end
    end
    accum
  end
end


=begin rdoc
Usage: 31303:React,Redux 42492

"Tell me the difference between track 31303's lessons within the top-level
React or Redux topics and the lessons of 42492 (unscoped)"

=end

sTrack = Track.new(ARGV[0])
fTrack = Track.new(ARGV[1])

union = sTrack & fTrack
old_only = sTrack - fTrack
new_only = fTrack - sTrack

summary = <<EOF

We recommend you upgrade. While completion is important, capability in job
interviews is far more important. Even if you're close to finishing V5's
React and Redux material, investing the time to get to get current standard
will make you a better interview candidate.

V5 has #{sTrack.lesson_count} lessons.
V6 has #{fTrack.lesson_count} lessons.

#{union.length} lessons are common to the two. You will retain credit for these
lessons if you completed them already.

#{old_only.length} lessons are purged from this track. If you completed these
labs, they will no longer count toward your progress toward graduation. Your
percentage complete will likely be affected and LOWERED. We remove lessons that
teach out-of-date practices, we consolidate lessons who more comfortably sit
together, and we replace lessons that create high "Ask a Question" volume.

You will lose credit for:

#{"\t * "}#{ old_only.map{|m| sTrack.title_for(m) }.join("\n\t * ")}

#{new_only.length} lessons are new to this track. You must complete these
labs, they will no longer count toward your progress toward graduation.  They
may cover material that you have already seen but which was not carried into
V6.

You will be required to complete:

#{"\t * "}#{ new_only.map{|m| fTrack.title_for(m) }.join("\n\t * ")}

EOF


summary
  .split(/\n$/)
  .each do |e|
    temp = e.chomp
    print("\n\n") if temp =~ /^\s*$/

    tokens = temp.split(/\n/)
    tokens.shift if tokens[0].empty?

    tokens.each {|t| print("#{t} "); print("\n") if t =~ /\t */}
end
