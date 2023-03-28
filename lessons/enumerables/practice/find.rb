# All of the methods below have been started for you. To test your code, uncomment the line at the bottom of the page that 
# prints out the return value of that method.  


def find_first_seven_letter_word # this one is done for you
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]

    words.find do |word|
      word.length == 7
    end

    # expected return value is "unicorn"
end

def no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = words.find do |word|
        word == "waldo"
    end

    # expected return value is nil
end

def find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    words.find {|word| word == "waldo"}

    # expected return value is "waldo"
end

def cannot_find_3_letter_words
    words = ["piglet", "porridge", "bear", "blueberry"]
    words.find {|word| word.length == 3}

    # expected return value is nil
end

def find_13
    numbers = [2, 13, 19, 8, 3, 27]
    numbers.find {|number| number == 13}

    # expected return value is 13
end

def find_first_even_number
    numbers = [3, 7, 13, 11, 10, 2, 17]
    numbers.find {|number| number.even?}

    # expected return value is 10
end

def find_first_multiple_of_3
    numbers = [2, 8, 9, 27, 24, 5]
    numbers.find {|number| number % 3 == 0}

    # expected return value is 9
end

def find_first_word_starting_with_q
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    words.find {|word| word.start_with?("q")}

    # expected return value is "quill"
end

def find_first_word_ending_with_er
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    words.find {|word| word.end_with?("er")}

    # expected return value is "finger"
end

def find_first_number_greater_than_20
    numbers = [1, 8, 19, 21, 29, 31, 34]
    numbers.find {|number| number > 20}

    # expected return value is 21
end

# p find_first_seven_letter_word
# p no_waldo
# p find_waldo
# p cannot_find_3_letter_words
# p find_13
# p find_first_even_number
# p find_first_multiple_of_3
# p find_first_word_starting_with_q
# p find_first_word_ending_with_er
# p find_first_number_greater_than_20