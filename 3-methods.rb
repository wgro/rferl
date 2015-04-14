# Okay, now on to our last lesson file before we start doing some fun stuff.
# This one is about methods.

# Methods encapsulate code. They make them reusable. For instance:

first_number = 10
second_number = 7

puts first_number + second_number

# The code above will do what you think it'll do. But to get it to happen again,
# I have to retype the whole thing. Instead, I could write a method...

def all_the_numbers_yo
  first_number = 10
  second_number = 7
  first_number + second_number
end

# Now look:

puts all_the_numbers_yo

# Notice I had to define the numbers again inside the method. That's called SCOPE.
# For the most part methods cannot look outside of themselves unless you tell them to.
# Or....unless you feed them something from the outside.

def feed_me_numbers! ( x, y )
  x + y
end

puts feed_me_numbers!( 100, 70 )

# Shit, that's cool. Isn't it?
# When you define a method, you can call its _arguments_ anything you'd like.
# Above, we called them x and y. They're just placeholders for something we'll pass in.

# Write a method that contains a conditional or iterator, and takes an argument.

def your_method
  puts "Your method will go here."
end

# Let's call your method up:

your_method

########################################
############# ASSIGNMENT 3 #############
########################################

# 1. Below is a method that checks if a number is greater than 10:

def greater_than_ten? (number)
  if number > 10
    return true
  else
    return false
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



