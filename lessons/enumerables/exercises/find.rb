# 1. Using #each, write the code to find the first sister over four letters in length.
# 2. Once you get the method below to work using #each, refactor your code to use #find. 

def find_first_long_named_sister
    sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
    sisters.find {|sister| sister.length > 4}
end

# orginal code:
# def find_first_long_named_sister
#     sisters = ["Rose", "Kathleen", "Eunice", "Patricia", "Jean"]
#     first_long_named_sister = []

#     sisters.each do |sister|
#         if sister.length > 4
#             first_long_named_sister << sister
#         end
#     end

#     first_long_named_sister.first

# end


p find_first_long_named_sister
# should return "Kathleen"