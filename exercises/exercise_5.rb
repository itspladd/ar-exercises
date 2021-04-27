require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# How much money do we have?
@total_revenue = Store.sum(:annual_revenue)
puts "Total annual revenue from all stores: #{@total_revenue}"

# What's the average?
@average_revenue = Store.average(:annual_revenue)
puts "Average revenue from all stores: #{@average_revenue}"

@stores_over_1m = Store.where([
  "annual_revenue >= :annual_revenue",
  {annual_revenue: 1000000}
  ])
  .count

puts "Number of stores with over 1M in sales: #{@stores_over_1m}"