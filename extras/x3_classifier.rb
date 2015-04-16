require_relative 'x3_trainer'

puts "What would you like to classify?"
quote = gets.chomp
classification = @robot_overlord.classify quote

if classification == "Hilton"
  puts "Sounds like something Paris Hilton would say..."
elsif classification == "Franklin"
  puts "Definitely Ben Franklin-like!"
end