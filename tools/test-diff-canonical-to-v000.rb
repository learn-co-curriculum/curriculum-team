#!/usr/bin/env ruby

=begin notes

usage: cat (list of repo urls) | ./test-diff-canonical-to-v000.rb > results

Note: You can use track_output.py with its -c option to harvest the canonical
URLS for a track.

Example Input

https://github.com/learn-co-curriculum/welcome-to-learn-verified
https://github.com/learn-co-curriculum/intro-to-tic-tac-toe-rb
https://github.com/learn-co-curriculum/matz-readme
https://github.com/learn-co-curriculum/ruby-lecture-intro-what-is-a-program
https://github.com/learn-co-curriculum/hello-world-ruby

Example Output:

[OK] https://github.com/learn-co-curriculum/welcome-to-learn-verified
[OK] https://github.com/learn-co-curriculum/intro-to-tic-tac-toe-rb
[ERROR] https://github.com/learn-co-curriculum/matz-readme
[OK] https://github.com/learn-co-curriculum/ruby-lecture-intro-what-is-a-program
[OK] https://github.com/learn-co-curriculum/hello-world-ruby

=end

require 'octokit'
require 'dotenv'

Dotenv.load

class Comparer
  def initialize(client, io)
    @client = client
    @io = io
  end

  def report
    total = urls.count
    ok_count = 0
    error_count = 0

    urls.each do |url|
      canonical_reponame = url.sub(/.*github.com\//,'')
      web_class_reponame = canonical_reponame.sub('curriculum', 'students') + '-v-000'

      begin
      rinfo_canonical,
        rinfo_student = [sha_mtime_for_repo(canonical_reponame), sha_mtime_for_repo(web_class_reponame)]
      rescue Octokit::NotFound => e
        puts "[NOT FOUND] #{url}: #{e.message}"
        next
      end

      commit_status = "#{rinfo_canonical.last} => #{rinfo_student.last}"
      status = if rinfo_canonical.first == rinfo_student.first
        ok_count += 1
        "[OK (#{commit_status})] #{url}"
      else
        error_count += 1
        "[ERROR (#{commit_status})] #{url}"
      end
      puts status
      STDOUT.flush
    end
    puts "SUMMARY: #{total} repos: #{error_count} ERROR (#{(Float(error_count) / total * 100).round}%); #{ok_count} OK (#{(Float(ok_count) / total * 100).round}%)"
  end

  def sha_mtime_for_repo(repo)
    all_commits = @client.commits(repo)
    commit_obj = all_commits.first.to_h
    commit_info = commit_obj[:commit][:committer]
    commit_info_string = [commit_info[:name], commit_info[:date]].join('@')
    [commit_obj[:sha], commit_info_string]
  end

  def urls
    @io.split("\n")
  end
end

client = Octokit::Client.new(
  :client_id => ENV["GH_OAUTH_APPID"],
  :client_secret => ENV["GH_OAUTH_APP_SECRET"]
)

Comparer.new(client, STDIN.read()).report
