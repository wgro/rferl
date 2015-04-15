require 'sinatra'
require "instagram"

# Replace with public port
set :port, 3000
# Allow external access
set :bind, '0.0.0.0'

client = Instagram.configure do |config|
  config.client_id = "933742aab74a4b9087a4b093665d9404"
end