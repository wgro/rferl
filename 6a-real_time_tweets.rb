require 'twitter'
require 'csv'

# Authenticate
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "_"
  config.consumer_secret     = "_"
  config.access_token        = "_"
  config.access_token_secret = "_"
end

puts "How many tweets you want?"
limit = gets.chomp.to_i
tweets_gathered = 0

# Open the CSV
CSV.open("output/6a-streamed_tweets.csv", "wb") do |file|
  # Add the header
  file << [ 'latitude', 'longitude' ]
  # Get tweets in there
    client.sample do |tweet|
      if tweet.is_a?(Twitter::Tweet) && tweet.geo?
        file << [ tweet.geo.latitude, tweet.geo.longitude ]
        tweets_gathered += 1
        puts "#{tweets_gathered}/#{limit}"
        if tweets_gathered == limit
          puts "Retrieved #{tweets_gathered} tweets"
          break
        end
      end
    end
end
