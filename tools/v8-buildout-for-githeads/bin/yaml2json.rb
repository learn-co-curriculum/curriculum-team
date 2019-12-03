#!/usr/bin/env ruby
#
require 'yaml'
require 'json'
require 'pp'

print JSON.pretty_generate(YAML.load(File.read(ARGV[0])))
