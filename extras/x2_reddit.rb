require 'sinatra'
require "redditkit"
require 'chartkick'

# Replace with public port
set :port, 3000
# Allow external access
set :bind, '0.0.0.0'