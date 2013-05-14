# ![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

# BEWD: MIDTERM
# --------

# #MIDTERM  REQUIREMENTS

# Create a command line based application that fulfills these criteria:

# -  Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
# -	Connects to a 3rd party api where the call varies based on what the user gives you.
# -	Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
# -	Push code on Github and create a pull request on the class repo.


# ##GRADING
# Your midterm is concidered completed if it meets all requirements above. Your instructor and T.A will provide you with feedback for your midterm.


require 'rest-client'
require 'json'

class Subreddit
	
	attr_accessor :subreddit_aww, :subreddit_funny, :explanation, :picker

	def subreddit_aww
		res_aww = RestClient.get "http://www.reddit.com/r/aww/.json"
		res_aww_hash = JSON.load(res_aww)
		results_aww = res_aww_hash["data"]["children"].map do |properties|
		story_aww = properties["data"]
		"Title: #{story_aww['title']}, Upvotes: #{story_aww['ups']}"
		end
	end

	def subreddit_funny
		res_funny = RestClient.get "http://www.reddit.com/r/funny/.json"
		res_funny_hash = JSON.load(res_funny)
		results_funny = res_funny_hash["data"]["children"].map do |properties|
		story_funny = properties["data"]
		"Title: #{story_funny['title']}, Upvotes: #{story_funny['ups']}"
		end
	end

	def explanation
		puts "Welcome to the searchable Reddit API. This program allows you to search for the top stories from specific subreddits. Type 1 for funny or 2 for aww to try it out!" 		
	end	

	def picker
		picker = gets.to_i
			if picker == 1
				puts subreddit_funny
			elsif picker == 2
				puts subreddit_aww
			else
				puts "please choose a valid option (1 or 2)"
				Subreddit.new.picker
		end
	end

end

Subreddit.new.explanation
Subreddit.new.picker