numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_numbers = []

numbers.each do |number|
  if number.odd?
    odd_numbers << number
  end
end

p odd_numbers

# Using the above example:
# 1. What is our Collection?
 # our collection is the numbers variable that is storing a array of integers, and it has 10 elements
# 2. What is our accumulator?
  # our accumulator is the odd_numbers variable that is storing an empty array
# 3. What sort of statement are we calling in the block?
  # we are calling a conditional statement in the beginning of the block that as long as its true, it will execute the code after that.
# 4. What do you think our return value will be?
  # [1, 3, 5, 7, 9]
