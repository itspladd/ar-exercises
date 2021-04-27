require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3);

# There should be three stores. That's one store too many.
puts Store.count

# Burn it down.
@store3.destroy

# Make sure it's dead.
puts Store.count