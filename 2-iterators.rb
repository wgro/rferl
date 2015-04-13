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

# Now on to my favorite iterator.
# It's called 'each', and it will serve you well.

# First, I'm going to create an array. That's like a list of things:

fellows = [ 'Arzu', 'Evgeny', 'Hanna', 'Ana', 'Olga', 'Natalia' ]

fellows.each do |person|
  puts "Hello #{person}!"
end

# I love the 'each' iterator.



