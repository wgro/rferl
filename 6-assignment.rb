require 'twitter'
# Authenticate

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "_"
  config.consumer_secret     = "_"
  config.access_token        = "_"
  config.access_token_secret = "_"
end

########################################
############# ASSIGNMENT 6 #############
########################################

# Let's make a CSV file with 180 tweets and their profile locations!

# First run a search. Store it in variable 'tweets'.
tweets = client.search( '#happybirthday' ).take(180)

# Create the CSV file with the headers of location, tweet_text, and screen_name.
# I've started the skeleton for you:

CSV.open("output/6-tweets_to_csv.csv", "wb") do |file|
end

# Now add an each block inside the CSV block above.

# Inside the each block, write an if statement that checks whether the user has
# a location. The condition you'll use is .user.location?, and it will be chained
# to your iterator variable. Screen name is accessible through .user.screen_name

# Inside the if statement, add the location, tweet text, and screen name to the CSV.

# Did it work?