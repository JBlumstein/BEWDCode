require 'json'
require 'rest-client'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
    res["hot"].map do |story|
      Story.new story["title"], story["channel"]
    end
  end
end

print self.get

=begin
res_hash["data"]["children"].map do |properties|
  story = properties["data"]
  "#{story['title']}, #{story['ups']}"