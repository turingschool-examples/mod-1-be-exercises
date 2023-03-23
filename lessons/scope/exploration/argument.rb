# Example 10
# expect: print 4
# def print_variable(x)
#   puts x
# end

# print_variable(4)

# # Example 11
# # expect: 4 - because x = 4 is global
# def print_variable(x)
#   puts x
# end

# x = 4
# print_variable(x)

# # Example 12
# # expect:  print 2 from print_variable; undefined local variable for x;
# def print_variable(x)
#   puts x
# end

# print_variable(2)
# puts x

# # Example 13
# # expect: prints 4; bc reassigns argument passed 
# # in (2) = 4 and then follows ln 31 code to print 4
# # we have not globally defined x yet so it's going to print that it's an undefined local variabl
def print_variable(x)
  x = 4
  puts x
end

print_variable(2)
puts x