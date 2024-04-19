require 'pry'
#### GLOBAL SCOPE
## Example 1

# x = 10
# puts x
# puts y

## Example 2

# x = 10
# puts x
# puts y
# y = 20

## Example 3

# x = 10
# def say_hello
#   puts 'Hello World!'
# end
# puts x

## Example 4

# def print_variable
#   x = 4
#   puts x
# end

# x = 2
# print_variable

## Example 5

# def print_variable
#   x = 4
#   puts x
# end

# x = 2
# print_variable
# puts x

##

#### ARGUMENT SCOPE

## Example 10

# def print_variable(x)
#   puts x
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
# x = 4
# puts x
# end

# print_variable(2)
# puts x
