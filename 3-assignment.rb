########################################
############# ASSIGNMENT 3 #############
########################################

# 1. Below is a method that checks if a number is greater than 10.
# See what happens when you feed it a number less than 10.
# Now write it in a way that returns false if the number is less than 10.

def greater_than_ten? (number)
  if number > 10
    return true
  end
end

# Now write a method called even? which accepts 1 number and tells you whether
# it is even or odd.

# 2. Here's a possible tweet:

tweet = 'Bushwick cray fingerstache beard, 
         gluten-free authentic American Apparel messenger bag sartorial 
         hoodie salvia pork belly seitan Etsy banjo. 
         Blue Bottle stumptown sustainable mixtape hashtag.'

# The 'length' method tells us how long something is. Typing tweet.length will show you
# how long this tweet is. Write a method called 'too_long?' that returns true if
# the tweet is over 140 chars.

# 3. The method '<<' appends stuff to other stuff. Write a method that takes 2 arguments
#    and appends them to each other.