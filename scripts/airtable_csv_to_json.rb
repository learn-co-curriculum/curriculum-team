# frozen_string_literal: true

require 'csv'
require 'json'

# Important - Make sure the AirTable you're exporting to CSV has all the columns below filled
# The only column that can be blank is Repository URL

# Important #2 - Confirm with Engineering that they need 'name' instead of 'title' keys (as per discussion in EDM-457)
# If title is needed, swap 'name' keys for 'title' on lines 35, 46, 51, 58, 66, 69, 79, 82 and 85


# replace file name with your CSV and converts to an array of arrays
csv = CSV.read('mod_1_real_order_test.csv')

name_of_new_track = "pilot-seattle-new-mod-1"

# column names we want
lesson_name = "Name"
repositoryurl = "Repository URL"
topic = "Topic"
brick = "Bricks"

# shifts column names off CSV array
titles = csv.shift 

# finds the index of the columns we want based on column names
# this way, order of columns in the CSV shouldn't matter
lesson_name_index = titles.find_index {|title| title.include?(lesson_name) }
repository_url_index = titles.find_index {|title| title.include?(repositoryurl) }
topic_index = titles.find_index {|title| title.include?(topic) }
brick_index = titles.find_index {|title| title.include?(brick) }

# builds hash using inject, starting with Track tier
# See bottom of file for example JSON output structure
result = csv.inject({name: name_of_new_track, tier: 'Track', children: []}) do |memo, row|

  lesson_name = row[lesson_name_index]
  repositoryurl = row[repository_url_index]
  topic = row[topic_index]

  # finds the first brick that isn't Legacy
  unit = row[brick_index].split(',').find { |brick| brick != 'Legacy Module 1 Junk Drawer' }

  # if no repositoryurl, skips to next row
  if !repositoryurl.nil? || repositoryurl != ''

    new_lesson = {
      name: lesson_name,
      tier: 'Lesson', 
      repositoryurl: repositoryurl
    }

    new_unit = {
      name: unit,
      tier: 'Unit', 
      children: [new_lesson]
    }

    existing_topic = memo[:children].find { |child| child[:name] == topic }
    if existing_topic
      existing_unit = existing_topic[:children].find { |child| child[:name] == unit }
      if existing_unit
        # if topic and unit exist, adds lesson to existing unit
        existing_unit[:children].push(new_lesson)
      else
        # if unit/brick doesn't exist, creates it along with first lesson
        existing_topic[:children].push(new_unit)
      end
    else
      # if topic doesn't exist, creates it along with first unit (brick) and lesson
      memo[:children].push({
        name: topic,
        tier: 'Topic', 
        children: [new_unit]
      })
    end
  end
  memo
end


# The end result is a hash that must be converted to JSON
# to_json converts symbol keys to strings for us

File.open('csv_to_track_output.json', 'w') { |file| file.write(result.to_json) }

# Example Output Structure:
#
# {
#     "name": "<trackname>",
#     "tier": 'Track',
#     "children": [{
#             "name": "<topicname>",
#             "tier": 'Topic',
#             "children": [{
#                 "name": "<unitname>",
#                 "tier": 'Unit',
#                 "children": [{
#                         "name": "<lessonname1>",
#                          "tier": 'Lesson',
#                         "repositoryurl": "<repositoryurl>"
#                     },
#                     {
#                         "name": "<lessonname2>",
#                         "tier": 'Lesson',
#                         "repositoryurl": "<repositoryurl>"
#                     }
#                 ]
#             }]
#         },
#         {
#             "name": "<topicname2>",
#             "tier": 'Topic',
#             "children": [{
#                 "name": "<unitname2>",
#                 "tier": 'Unit',
#                 "children": [{
#                         "name": "<lessonname1>",
#                         "tier": 'Lesson',
#                         "repositoryurl": "<repositoryurl>"
#                     },
#                     {
#                         "name": "<lessonname2>",
#                         "tier": 'Lesson',
#                         "repositoryurl": "<repositoryurl>"
#                     }
#                 ]
#             }]
#         }
#     ]
# }
