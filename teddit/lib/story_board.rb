require_relative 'remote_source.rb'

class StoryBoard

  @@stories =[]

  def self.add_story(story)
    @@stories << story
  end

end



