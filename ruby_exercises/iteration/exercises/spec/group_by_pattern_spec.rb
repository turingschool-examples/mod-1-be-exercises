RSpec.describe 'group by pattern' do

  it 'test 1' do
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    #group by word length
    grouped = Hash.new {|hash, key| hash[key] = []}
    words.each do |word|
      grouped[word.length] << word
    end
    expected = {3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
    expect(grouped).to eq(expected)
  end

  xit 'test 2' do
    numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    # group by odd and even
    odd_and_even = Hash.new {|hash, key| hash[key] = []}
    numbers.each do |number|
      # Your code goes here
    end
    expected = {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
    expect(odd_and_even).to eq(expected)
  end

  xit 'test 3' do
    words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
    # group by first letter
    words_by_first_letter = Hash.new {|hash, key| hash[key] = []}
    # Your code goes here
    expected = {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
    expect(words_by_first_letter).to eq(expected)
  end

  xit 'test 4' do
    words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
    # group by uniqueness

    # Your code goes here
    expected = {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
    expect(grouped).to eq(expected)
  end

  xit 'test 5' do
    numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
    #group by number of zeroes
    
    # Your code goes here
    expected = {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
    expect(grouped).to eq(expected)
  end

  xit 'test 6' do
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    # group by order of magnitude
    
    # Your code goes here
    expected = {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
    expect(grouped).to eq(expected)
  end
end
