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