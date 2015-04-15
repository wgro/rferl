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

########################################
############# ASSIGNMENT 5 #############
########################################

# 1. Write a method 'check_brevity' that grabs 20 tweets from a hashtag of your
#    choice, and prints the character count of each tweet.

# tweets = client.search...
# Define your twitter search here, outside the methods, so that it will
# only run once.

def check_brevity ( tweets )
end

check_brevity

# 2. Here's a method that averages an array. Don't worry too much about how it works.

def average_array ( array )
  array.inject { | first_number, x | first_number + x } / array.length.to_f
end

# Now write a method that 1) adds the length of each tweet.text to an array.
# HINT: use the << method. Then print the average length of the tweet text in your
# search. :)

def average_brevity ( tweets )
  puts "Average brevity is... "
end

average_brevity
