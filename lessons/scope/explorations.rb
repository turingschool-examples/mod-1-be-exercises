require "pry"
#### GLOBAL SCOPE
## Example 1

# x = 10
# puts x
# puts y

## Example 2

# x = 10
# puts x # 10
# puts y # Error
# y = 20

## Example 3

# x = 10
# def say_hello # Never called!
#   puts 'Hello World!'
# end
# puts x

## Example 4

# def print_variable
#   x = 4
#   puts x
# end

# x = 2 # Global
# print_variable # 4

## Example 5

# def print_variable(x)
#   puts x
# end

# x = 2
# print_variable(x) # Error
# puts x # 2

##

#### ARGUMENT SCOPE

## Example 10

# def print_variable(x)
# puts x
# end

# print_variable(4)

## Example 11

# def print_variable(x)
#   puts x
# end

# x = 4
# print_variable(x)

## Example 12

# def print_variable(x)
#   puts x
# end

# print_variable(2)
# puts x

## Example 13

# def print_variable(x)
#   # x = 2
#   x = 4
#   puts x # 4
# end

# print_variable(2) # 4
# puts x # Error

#### BLOCK SCOPE

## Example 14

# numbers = [1, 2, 3] # G
# total = 0 # G

# numbers.each do |number|
#   # number = ...
#   total += number
#   # total = total + number
# end

# p total # 6

## Example 15

# numbers = [1, 2, 3] # G
# total = 0 # G
# pizza = "cheesy" # G

# numbers.each do |number|
#   # number = ... # M
#   pizza = 'yummy!' # M
#   school = "Turing"
#   total += number
# end

# p pizza #
# p school

## Example 16

# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   # number = ...
#   total += number
# end

# p number # Error

## Example 17

# numbers = [1,2,3]
# number = 0
# numbers.each do |number|
#   # number = ...
#   puts number
# end

## Example 18

# numbers = [1, 2, 3]
# numbers.each do |number|
#   # number = ...
#   number = 0
#   puts number
# end

## Example 19

numbers = [1,2,3]

def number
  0
end

numbers.each do |number|
  # number = ...
  puts self.number
end