require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter a store name:"
print "> "
store_name = $stdin.gets.chomp

puts "Carries men's clothing? [Y/N]:"
print "> "
mens_apparel = $stdin.gets.chomp.downcase == "y"

puts "Carries women's clothing? [Y/N]:"
print "> "
womens_apparel = $stdin.gets.chomp.downcase == "y"

puts "Enter annual revenue:"
print "> "
annual_revenue = $stdin.gets.chomp.to_i

result = Store.create(
  name: store_name,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel,
  annual_revenue: annual_revenue
  )

result.errors && result.errors.full_messages.each {|msg| puts msg}