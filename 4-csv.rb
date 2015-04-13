# Include the csv processing library:
require 'csv'

# Let's get the group:
fellows = [ 'Arzu', 'Evgeny', 'Hanna', 'Ana', 'Olga', 'Natalia' ]
favourite_colour = [ 'blue', 'green', 'red', 'gray', 'mauve', 'sienna' ]

# Now we're going to create a CSV file with you and your favorite colors:
CSV.open("output/fellows_and_colors.csv", "wb") do |csv|
  csv << fellows
  csv << favourite_colour
end

# Let's read it back into the terminal:
CSV.foreach('output/fellows_and_colors.csv') do |row|
  puts row.inspect
end