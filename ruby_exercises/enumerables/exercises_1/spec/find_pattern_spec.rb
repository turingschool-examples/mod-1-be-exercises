RSpec.describe 'find pattern' do

  it 'finds first seven letter word' do
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    expect(found).to eq("unicorn")
  end

  it 'no waldo' do
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      # Your code goes here
      found == word.include?("waldo")
    end
    expect(found).to eq(nil)
  end

  it 'found waldo' do
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil 
    # Your code goes here
    words.each do |word|
      word.include?("waldo") ? found = word : nil 
      # if word.include?("waldo")
      #   found = word
      # else
      #   nil 
      # end
    end
    expect(found).to eq("waldo")
  end

  it 'no three letter words' do
    words = ["piglet", "porridge", "bear", "blueberry"]
    # Your code goes here
    found = nil 
    words.each do |word|
      word.length == 3 ? found = word : nil 
    end
    expect(found).to eq(nil)
  end

  it 'finds 13' do
    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    found = nil 
    numbers.each do |num|
       num == 13 ? found = num : nil  
      #   found = num
      # else 
      #   nil
      # end 
    end
    expect(found).to eq(13)
  end

  it 'first even number' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    found = nil 
    numbers.each do |num|
      if num.even? == true
        found = num 
        break 
      end
    end
    expect(found).to eq(10)
  end

  it 'first multiple of 3' do
    numbers = [2, 8, 9, 27, 24, 5]
    found = nil 
    numbers.each do |num|
      if num % 3 == 0
        found = num
        break 
      end
    end
    # Your code goes here
    expect(found).to eq(9)
  end

  it 'first word starting with q' do
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    found = nil
    words.each do |word|
      if word.start_with?("q")
        found = word
        break 
      end
    end
    expect(found).to eq("quill")
  end

  it 'first word ending with er' do
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    # Your code goes here
    found = nil
    words.each do |word|
      if word.end_with?("er")
        found = word
        break 
      end
    end
    expect(found).to eq("finger")
  end

  it 'first number greater than 20' do
    numbers = [1, 8, 19, 21, 29, 31, 34]
    # Your code goes here
    found = nil 
    numbers.each do |num|
      if num > 20
        found = num 
        break 
      end
    end
    expect(found).to eq(21)
  end
end
