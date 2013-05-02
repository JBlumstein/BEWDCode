# Copy your solution from hashes_exercise.rb
# We're going to use a remote data source to pull in stories, apply categories
# and have them upvoted based on our rules.
# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to a array and display your "Front page"
# Figure out how to get to the data you need in the source you choose

# Figure out how to get to the data you need in the source you choose

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)

require 'rest-client'
require 'json'

res = RestClient.get "http://www.reddit.com/.json"

res_hash = JSON.load(res)

results =
res_hash["data"]["children"].map do |properties|
  story = properties["data"]
  "#{story['title']}, #{story['ups']}"
end

puts "Welcome to Teddit. Here are the top stories:"

puts results




# returns a block containing four hashes, the second of which (key = "children") has a value that is an array of blocks, one block per article. Within each article block is two hashes, the second of which (key="data") has a value of a block containing a number of different hashes, one for each property about the article (including hashes called "title" and "ups").

# so the mission is this: key = data -> key = children -> then for each value in children get the value for the key = data and separate out the values for title and ups


#  => #<Enumerator: {"modhash"=>"", "children"=>[{"kind"=>"t3", "data"=>{"domain"=>"imgur.com", "banned_by"=>nil, "media_embed"=>{}, "subreddit"=>"pics", "selftext_html"=>nil, "selftext"=>"", "likes"=>nil, "link_flair_text"=>nil, "id"=>"1dhovl", "clicked"=>false, "title"=>"Hi from orbit, Reddit! I helped Canada unveil its new high-tech $5 bill yesterday. What do you think of the new design?", "media"=>nil, "score"=>4698, "approved_by"=>nil, "over_18"=>false, "hidden"=>false, "thumbnail"=>"http://d.thumbs.redditmedia.com/Ttefawdd5P6lyRDE.jpg", "subreddit_id"=>"t5_2qh0u", "edited"=>false, "link_flair_css_class"=>nil, "author_flair_css_class"=>nil, "downs"=>11034, "saved"=>false, "is_self"=>false, "permalink"=>"/r/pics/comments/1dhovl/hi_from_orbit_reddit_i_helped_canada_unveil_its/", "name"=>"t3_1dhovl", "created"=>1367456545.0, "url"=>"http://imgur.com/a/VxMz9", "author_flair_text"=>nil, "author"=>"ColChrisHadfield", "created_utc"=>1367427745.0, "distinguished"=>nil, "num_comments"=>1215, "num_reports"=>nil, "ups"=>15732}}, {"kind"=>"t3", "data"=>{"domain"=>"i.imgur.com", "banned_by"=>nil, "media_embed"=>{}, "subreddit"=>"AdviceAnimals", "selftext_html"=>nil, "selftext"=>"", "likes"=>nil, "link_flair_text"=>nil, "id"=>"1dht7e", "clicked"=>false, "title"=>"Not too sure this is the right meme but here goes nothing..", "media"=>nil, "score"=>3542, "approved_by"=>nil, "over_18"=>false, "hidden"=>false, "thumbnail"=>"http://d.thumbs.redditmedia.com/TykJKaY9sMGz3oUo.jpg", "subreddit_id"=>"t5_2s7tt", "edited"=>false, "link_flair_css_class"=>nil, "author_flair_css_class"=>"fbfrog", "downs"=>8142, "saved"=>false, "is_self"=>false, "permalink"=>"/r/AdviceAnimals/comments/1dht7e/not_too_sure_this_is_the_right_meme_but_here_goes/", "name"=>"t3_1dht7e", "created"=>1367459748.0, "url"=>"http://i.imgur.com/E7mBsqZ.jpg", "author_flair_text"=>"", "author"=>"orionxx", "created_utc"=>1367430948.0, "distinguished"=>nil, "num_comments"=>206, "num_reports"=>nil, "ups"=>11684}}, {"kind"=>"t3", "data"=>{"domain"=>"imgur.com", "banned_by"=>nil, "media_embed"=>{}, "subreddit"=>"funny", "selftext_html"=>nil, "selftext"=>"", "likes"=>nil, "link_flair_text"=>nil, "id"=>"1dhtsx", "clicked"=>false, "title"=>"My husband took care of our house, kids and pets while I was away for 11 days. I came home to these signs posted everywhere.", "media"=>nil, "score"=>2059, "approved_by"=>nil, "over_18"=>false, "hidden"=>false, "thumbnail"=>"http://a.thumbs.redditmedia.com/kGTZ3YSwn18PzlTr.jpg", "subreddit_id"=>"t5_2qh33", "edited"=>false, "link_flair_css_class"=>nil, "author_flair_css_class"=>nil, "downs"=>1354, "saved"=>false, "is_self"=>false, "permalink"=>"/r/funny/comments/1dhtsx/my_husband_took_care_of_our_house_kids_and_pets/", "name"=>"t3_1dhtsx", "created"=>1367460147.0, "url"=>"http://imgur.com/a/teejd", "author_flair_text"=>nil, "author"=>"HabitantsFan", "created_utc"=>1367431347.0, "distinguished"=>nil, "num_comments"=>146, "num_reports"=>nil, "ups"=>3413}},

# and so forth.

#convert values of data from 

# turn the string into a hash by seperating values at , {
# use Hash.new or inject method?
=begin
Hash.new { |hash, key| hash[key] =  }


>> str.split(/, /).inject(Hash.new{|h,k|h[k]=[]}) do |h, s|
..   v,k = s.split(/@/)
..   h[k] << v
..   h
..   end
=> {"p"=>["uu"], "m"=>["xx", "zz"], "n"=>["yy"]}


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