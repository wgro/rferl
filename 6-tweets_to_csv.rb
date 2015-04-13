require 'twitter'
require 'csv'

# Authenticate with Twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "_"
  config.consumer_secret     = "_"
  config.access_token        = "_"
  config.access_token_secret = "_"
end

# What would you like to search for this time?
puts 'What hashtag would you like to search for?'
hashtag = gets.chomp

# Let's check to see if you forgot to preface the search with a hash. ;)
if hashtag[0] != '#'
  hashtag.insert(0, '#')
end

# Open the CSV
CSV.open("output/6-tweets_to_csv.csv", "wb") do |file|
  # Make the headers
  file << [ 'handle', 'text' ]
  client.search( hashtag ).take(20).each do |tweet|
    # Write the file
    file << [ tweet.user.name, tweet.text ]
  end
end