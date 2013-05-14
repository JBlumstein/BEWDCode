# require_relative 'remote_source'

class Story
  
  attr_accessor :title, :category, :upvotes

  def initialize(title, category)
    @title = title
    @category = category
    @upvotes = 1
  end

  # attr_reader :upvotes
  # attr_accessor :category

  def to_s
    "Story: #{title}, Category: (#{category}), Upvotes: #{upvotes}."

  def upvote
    @upvotes += 1
  end

  def downvote!(upvotes)
    @upvotes -= 1
  end

end

Story.new


# class Story

#    def initialize

     

#    end

#    def new(title, category)

     

#    end

#    # 	 @title = title
#    # 	 @story = story

#    # 	end



# end


