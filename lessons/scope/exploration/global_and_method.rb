# Example 1
# x = 10
# puts x
# puts y
# expected = undefined local variable y

# Example 2
# expected = undefined local variable y because y is not yet definied
# x = 10
# puts x
# puts y
# y = 20

# # Example 3
# expected = 10; doesn't put the def method bc it isn't called
# x = 10
# def say_hello
#   puts "Hello World!"
# end
# puts x

# # Example 4
# expected = prints 4 because we're not asking it to print the x = 2 
# x = 4 is scoped to the method (method scoped); it's local to the print_variable method
# x = 2 is a global scope; and globally defined.

# def print_variable
#   x = 4
#   puts x
# end
# x = 2
# print_variable


## Example 5
# expected = prints only 2 because it's global. ruby reads top to bottom so even tho 
# we call the method it gets rewritten by gloabl
# x = 2 is a global scope; 
# def print_variable
#   x = 4
# end

# x = 2
# print_variable
# puts x