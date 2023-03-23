#### Example 14
# expect: prints 6; running each number total(0) = number(1) = new_total(1); new total(1) + next each num(2) = 3, etc

# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   total += number
# end

# p total


# #### Example 15
# # expect: error - undefined local variable bc pizza is scoped w/in method

# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   pizza = "yummy!"
#   total += number
# end

# p pizza


# #### Example 16
# # expect: undefined local variable "number"

# numbers = [1,2,3]
# total = 0
# numbers.each do |number|
#   total += number
# end

# p number


# #### Example 17
# # expect: prints 1, 2, 3 on separate lines
# # |number| is a block variable 
## ln 46 is calling the iteration of numbers array bc 
# we're calling the `.each` method (or enumerator), causing it to loop 
# through the array until it reaches the end of the array
# the number = 0 on ln 47 isn't doing anything; but if we print numbers we'll get an output of 0.
# this global variable is not the same as the block variable in the each method.

# numbers = [1,2,3]
# number = 0
# numbers.each do |number|
#   puts number
# end


# #### Example 18
# # expect: prints 0, 0, 0 on separate lines because it's rewriting to 0 in ln 59

# numbers = [1,2,3]
# numbers.each do |number|
#   number = 0
#   puts number
# end


# #### Example 19
# # expect: 

# numbers = [1,2,3]
# def number
#   0
# end
# numbers.each do |number|
#   puts number
# end
