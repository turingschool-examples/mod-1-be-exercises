RSpec.describe 'group by pattern' do

  it 'group words by length' do
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      grouped[word.length] << word
      # require "pry"; binding.pry
    end
    expected = {3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
    expect(grouped).to eq(expected)
  end

  it 'groups by odds and evens' do
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    odd_and_even = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      if number.odd?
        odd_and_even[1] << number
      else 
        odd_and_even[0] << number
      end
    
      # Your code goes here
    end
    expected = {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
    expect(odd_and_even).to eq(expected)
  end

  it 'groups by first letter' do
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    words_by_first_letter = Hash.new {|hash, key| hash[key] = []}
    # Your code goes here
    words.each do |word|
      words_by_first_letter[word[0]] << word
    end
    expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    expect(words_by_first_letter).to eq(expected)
  end

  it 'group by uniqueness' do
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    # Your code goes here
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      downcased_word = word.downcase
      grouped[downcased_word] << word 
    end 
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    expect(grouped).to eq(expected)
  end

  it 'group by number of zeroes' do
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    # Your code goes here
    grouped =           
    numbers.each do |number|
      grouped[number.to_s.count("0")] << number
    end
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    expect(grouped).to eq(expected)
  end

  it 'group by order of magnitude' do
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    # Your code goes here
    grouped = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      grouped[number.to_s.length] << number
    end
    expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
    expect(grouped).to eq(expected)
  end
end

