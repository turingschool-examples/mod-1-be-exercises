numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

total = 0

numbers.each do |number|
  total += number
end

puts total


# Using the example above:
# 1. What is our collection?
  # our collection is an array that is assigned to our variable numbers. It has 10 elements
  # our numbers variable that stores an array of integers. this array has 10 elements
# 2. What is our accumulator total doing?
  # out accumulator total is storing the sum of the elements of the array
# 3. What do you think is happening in the block on line 6?
  # on line 6, we are adding each number of the array to the total
# 4. What will our output be from line 9?
  # 55
