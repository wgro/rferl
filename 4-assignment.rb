# Include the csv processing library:
require 'csv'

# Other stuff I'll explain
require 'json'
require 'net/http'
def get_coords ( place )
  # Here's the Google base URL:
  uri = URI( 'https://maps.googleapis.com/maps/api/geocode/json' )
  # Let's add the place you want as a URL parameter:
  uri.query = URI.encode_www_form( 'address' => place )

  # Fetch the response from the goog
  response = Net::HTTP.get( uri )

  # Change the response into something we can process
  parsed_response = JSON.parse( response )

  # Identify the parts of the 'tree' we need
  # In browser: https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA
  lat = parsed_response['results'][0]['geometry']['location']['lat']
  long = parsed_response['results'][0]['geometry']['location']['lng']

  # Spit out the latitude and longitude
  return lat, long
end

########################################
############# ASSIGNMENT 4 #############
########################################

# What are you favorite places that you've visited?
# Least favorite?
# Let's map them!

# I've created a method called get_coords. It takes a place. Be it an address,
# or country, or whatever. It spits back out a latitude and longitude for a point
# that we can map. If you're interested in how it works, I've commented it for you.

# It will return an array for a given place. The first number or [0] will be lat, and
# second [1] will be longitude.
# So get_coords('paris')[0] will be latitude, and [1] would be longitude.

# Don't worry, I'll walk you through this.

# 1. First store your 5 favorite places in this array:
favourite_places = []

# 2. Next, open a CSV file in the output folder called 'fav_places.csv'. Inside the
#    CSV block, add a row called latitude and longitude.


# 3. Now inside the block of code for #2, add another block that _iterates_ over each
#    place in your favourite_places array and adds the coordinates for your place.
#    In this step you'll use the get_coords method.
