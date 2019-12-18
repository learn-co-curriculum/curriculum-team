#!/usr/bin/env ruby

require 'json'

# This script will take the JSON output of track_output.py and restructure it, adding 'tier' keys and
# updating topics and units to have 'children' arrays rather than nested objects

if ARGV.length < 2
  puts "Please provide both input and output filenames"
  puts "Example: ruby json_track_to_rake_task_ready.rb <input_file.json> <output_file.json>"
  return
end

file = File.open "./#{ARGV[0]}"
file_object = JSON.load file

new_object = {
  "title": file_object.keys[0],
  "tier": "track",
  "children": file_object.values[0].keys.map { |child| 
    {
      "title": child,
      "tier": "topic",
      "children": file_object.values[0][child].keys.map { |subchild|
        {
          "title": subchild,
          "tier": "unit",
          "children": file_object.values[0][child][subchild]["children"].map { |greatsubchild|
            {
              "title": greatsubchild["title"],
              "tier": "lesson",
              "repositoryurl": greatsubchild["github_url"]
            }
          }
        }
      } 
    }
  }
}



puts JSON.pretty_generate(new_object);
File.open("#{ARGV[1]}", 'w') { |file| file.write(JSON.pretty_generate(new_object)) }
