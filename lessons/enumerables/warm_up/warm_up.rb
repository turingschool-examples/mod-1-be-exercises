# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
  upcased = []
  names.each do |word|
     upcased << word.upcase
  end
  upcased
end 

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]


# kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]
# kards_upcased = []
# kardashians.each do |kardashian|
#   kards_upcased << kardashian.upcase
# end

# p kards_upcased

# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

  def names_ending_in_ie(names)
  pet_names = []
    names.each do |name|
      if name.include?("ie")
      pet_names << name
      end
    end
    pet_names
  end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]






# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above_100(nums)
    first_num = 0
    nums.each do |num|
      if num ** 2 > 100
        first_num = num
        break
      end
    end
    first_num
end 

p first_num_thats_square_is_above_100(nums)

# should return the integer 11