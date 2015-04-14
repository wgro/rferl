# We continue our whirlwind tour of programming with iterators.
# Iterators and loops do stuff 0 or more times, depending on conditions.

# Here we set some variables:

number = 0
finish = 10

# And we tell Ruby to print 'number' as long as it is below 10:

while number < finish do
  puts number
  number = number + 1
end

# Easy eh?
# You can also rewrite it as:

until number == 10 do
  puts number
  number = number + 1
end

# Loops like the ones above can be dangerous.
# If you don't provide an exit condition that will ever be met...
# ...your computer will catch on fire and a kitten will die.

# while number != "feh" do
#   puts number
#   number = number + 1
# end

# Now on to conditionals! A programmers staple.
# Conditionals execute stuff _depending_ on whether a condition is met.
# For instance:

my_name = "Wojtek"
your_name = "Wojtek"

if my_name == your_name
  puts "Wow 2 Wojteks!"
end

# If we change your name to something else...
# It won't execute:

your_name = "Sigismund Jones"

if my_name == your_name
  puts "It's the same person!"
end

# You can also add an 'else' statement. It's pretty self explanatory.
if my_name == your_name
  puts "Same person!"
else
  puts "Not the same"
end

# There are tons of things you can check with an if statement. You can compare size:
windspeed = 100

if windspeed > 99
  puts "Hurricane!"
elsif windspeed < 10
  puts "Just a zephyr..."
end

# Notice the elsif addition. That just adds another condition to check against.

# Now on to my favorite iterator.
# It's called 'each', and it will serve you well.

# First, I'm going to create an array. That's like a list of things:

fellows = [ 'Arzu', 'Evgeny', 'Hanna', 'Ana', 'Olga', 'Natalia' ]

fellows.each do |person|
  puts "Hello #{person}!"
end

# I love the 'each' iterator.

########################################
############# ASSIGNMENT 2 #############
########################################

# 1. Write an if/else statement that compares the number of free seats
#    to how many people there are. If there are not enough seats, print
#    "Overbooked!" otherwise print "Good to go!".

seats = 10
people = 11

# 2. Go through each element in this array and multiply it by 3. 

numbers = [ 33, 29.77, 11, "42" ]

# 3. Now see if you can count the number of elements in that array.



# 4. Make a while loop that counts down from 99 and sings the beer song.
#    I've given you a bit of a start:

bottles = 99

# Beer song:
# puts "#{bottles} bottles of beer on the wall."
# puts "#{bottles} bottles of beer!"
# (You'll have a little bit of code to write on this line)
# puts "Take one down, pass it around, #{bottles} bottles of beer on the wall!"









