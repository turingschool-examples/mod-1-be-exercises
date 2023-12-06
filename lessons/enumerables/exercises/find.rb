# 1. Using #each, write the code to find the first sister over four letters in length.
# 2. Once you get the method below to work using #each, refactor your code to use #find. 

# def find_first_long_named_sister
#     sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
#     sister_over_four = ""
#     sisters.each do |sister|
#         if sister.length > 4
#             sister_over_four = sister
#             break
#         end
#     end
#     sister_over_four
# end

def find_first_long_named_sister
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
    
    sisters.find do |sister|
        sister.length > 4
    end
end

p find_first_long_named_sister

# Write a Ruby program that takes a sentence as input and reverses the order of the words in the sentence. For example:
# "Hello world! Ruby is fun." would become "fun. is Ruby World! Hello"

def reverse(input)
 input.split(" ").reverse.join(" ")
end

string = "Hello world! Ruby is fun."

puts reverse(string)