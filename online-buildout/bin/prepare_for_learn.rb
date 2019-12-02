#!/usr/bin/env ruby
require 'yaml'

DEPTH_LABELS = {
  0 => "Track",
  1 => "Topic",
  2 => "Unit",
  3 => "Lesson",
  4 => "DIE"
}

top_src = YAML.load(File.open(ARGV[0]))

def process(struc, depth=0)
  struc["tier"] = DEPTH_LABELS[depth]
  if struc["children"]
    Array(struc["children"]).each do |sub_struc|
      process(sub_struc, depth + 1)
    end
  else
    struc["repositoryurl"] = struc["github_url"]
    struc.delete("github_url")
  end
end

process(top_src)
print YAML.dump(top_src)
