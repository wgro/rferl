require 'sinatra'
require 'twitter'

set :server, 'webrick'

# Replace with public port
set :port, 3000

# Allow external access
set :bind, '0.0.0.0'

get '/' do
  # Authenticate with Twitter
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "_"
    config.consumer_secret     = "_"
    config.access_token        = "_"
    config.access_token_secret = "_"
  end

  # Get the users
  fetched_users = client.users("disconnect", "arzugeybulla", "evgenyen", "hannaliubakova", "salma_bahramy")

  # List of handles to fetch information for...
  @fellows = [] # fellow names
  @followers = [] # followers_count
  @friends = [] # friends_count

  fetched_users.each do |user|
    @fellows << user.username
    @followers << user.followers_count
    @friends << user.friends_count
  end

  erb :index
end