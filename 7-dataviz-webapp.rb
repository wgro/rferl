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

  erb :index
end