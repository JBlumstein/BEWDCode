<<<<<<< HEAD
# Add to Teddit!
# We want to be able to add stories from the command line
# Deliver this experience
# Print 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
# Print 'Please enter a News story:'
# ***Waits for input*** use the gets method here. (Assume you entered "Bear feels remorse for stealing candy from baby")
# Bonus if you don't use gets.chomp
# Print 'Please give it a category:'
# ***Waits for input***(Assume you entered "ecological", note all in lowercase)
# Print "New story added! Bear feels remorse for stealing candy from baby, Category: Ecological, Current Upvotes: 1"
# Find ways to incorporate methods here. Look for repetition

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: 1")
end


show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
story = get_input
show_message("Please give it a category:")
category = get_input
show_new_story_notification(story, category, 1)

=======
>>>>>>> 18abefc7165ee1acbbe139766e1b72944ca98903
# Copy the code from the strings_exercise_SN_solution.rb
#
# New Feature! If the Story is about cats multipy the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# Cats frolic inspite of a tuna shortage should give you 5 times the upvotes!
<<<<<<< HEAD
# If the category is Food it gets 3 times the upvotes
=======
# If the category is Food it gets 3 times the upvotes
>>>>>>> 18abefc7165ee1acbbe139766e1b72944ca98903