# All of the methods below have been started for you. To test your code, uncomment the line at the bottom of the page that 
# prints out the return value of that method.  


def capitalize
    names = ["alice", "bob", "charlie"]

    names.map do |name|
        name.capitalize
    end
    # expected return value is ["Alice", "Bob", "Charlie"]
end

def doubles
    numbers = [1, 2, 3, 4, 5]

    numbers.map do |number|
        number * 2
    end

    # expected return value is [2, 4, 6, 8, 10]
end

def squares
    numbers = [1, 2, 3, 4, 5]

    numbers.map do |number|
        number ** 2
    end

    # expected return value is [1, 4, 9, 16, 25]
end

def lengths
    names = ["alice", "bob", "charlie", "david", "eve"]

    names.map do |name|
        name.length
    end

    # expected return value is [5, 3, 7, 5, 3]
end

def normalize_zip_codes
    numbers = [234, 10, 9119, 38881]

    numbers.map do |number|
        "%05d" % number
    end

    # expected return value is ["00234", "00010", "09119", "38881"]
end

def backwards
    names = ["alice", "bob", "charlie", "david", "eve"]

    names.map do |name|
        name.reverse
    end

    # expected return value is ["ecila", "bob", "eilrahc", "divad", "eve"]
end

def words_with_no_vowels
    words = ["green", "sheep", "travel", "least", "boat"]

    words.map do |word|
        word.gsub(/[aeiou]/, "")
    end

    # expected return value is ["grn", "shp", "trvl", "lst", "bt"]
end

def trim_last_letter
    animals = ["dog", "cat", "mouse", "frog", "platypus"]

    animals.map do |animal|
        animal.chop
    end

    # expected return value is ["do", "ca", "mous", "fro", "platypu"]
end


p capitalize
p doubles
p squares
p lengths
p normalize_zip_codes
p backwards
p words_with_no_vowels
p trim_last_letter