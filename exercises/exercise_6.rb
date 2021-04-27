require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Create new employees for store 1
@store1.employees.create(
  first_name: "Skeletron",
  last_name: "Marrowvein",
  hourly_rate: 200)

@store1.employees.create(
  first_name: "Vertebros",
  last_name: "Craniax",
  hourly_rate: 100)

@store1.employees.create(
  first_name: "Ostorex",
  last_name: "Fibular",
  hourly_rate: 50)

# Create new employees for store 2
@store2.employees.create(
  first_name: "Trapezius",
  last_name: "Crushpecs",
  hourly_rate: 41)

@store2.employees.create(
  first_name: "Taution",
  last_name: "Stoneglutes",
  hourly_rate: 100)

@store2.employees.create(
  first_name: "Soulfeast",
  last_name: "Blood-taster",
  hourly_rate: 40)

puts Employee.count