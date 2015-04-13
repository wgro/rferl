require 'twitter'

# Authenticate
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "_"
  config.consumer_secret     = "_"
  config.access_token        = "_"
  config.access_token_secret = "_"
end

# Let's search for a hashtag now that we've authenticated...
tweets = client.search( "#AJStream" ).take(10)

# Alright, cool. Now let's go through each tweet and print the text of it.
tweets.each do |tweet|
  puts tweet.text
end

# What would you like to search for this time?
puts 'What hashtag would you like to search for?'
hashtag = gets.chomp

# Let's check to see if you forgot to preface the search with a hash. ;)
if hashtag[0] != '#'
  hashtag.insert(0, '#')
end

# Let's run the search...
tweets = client.search( hashtag ).take(10)
puts "Searching for #{hashtag}..."

# And print your results...
tweets.each do |tweet|
  puts tweet.text
end

# How would you clean the above code up by using a method?
