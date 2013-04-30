# Copy your solution from hashes_exercise.rb
# We're going to use a remote data source to pull in stories, apply categories
# and have them upvoted based on our rules.
# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to a array and display your "Front page"
# Figure out how to get to the data you need in the source you choose

require 'rest-client'
require 'json'

# Figure out how to get to the data you need in the source you choose

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)

reddit_as_json = RestClient.get("http://www.reddit.com/.json")

story = JSON.load(reddit_as_json)

# turn the string into a hash by seperating values at , {

# Have the JSON library load it into a hash for us

story = {"Title" => "#{title}", "Upvotes" => "#{ups}"}

story.each do | title, ups |
  puts "Title: #{title}, Upvotes: #{ups}"
end

# Add each story to a array and display your "Front page"



# Figure out how to get to the data you need in the source you choose
=begin
show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

def show_new_story_notification(story)
  show_message("New story added! #{story[:title]}, Upvotes: #{story[:ups]}")
end

def show_all_stories(stories)
  show_message "Story: #{stories.first[:title]}, Upvotes: #{stories.first[:ups]}"
end

stories = []
story = { title, upvotes }
stories << story
show_new_story_notification(story)
show_all_stories stories

=begin
story.each do | title, ups |
  puts "Title: #{item}, Upvotes: $#{ups}"
end
=end


=begin
data = RestClient.get '', { 'Authorization' => "Bearer #{qZRcSJGDUDxuxWDcGoRZ1mtt1o0}" }
data = JSON.parse(data)
=end