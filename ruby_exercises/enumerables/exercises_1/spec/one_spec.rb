RSpec.describe 'one' do

  it 'one more' do
    words = ["bigger", "better", "more", "improved", "advantageous"]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    expect(exactly_one).to eq(true)
  end

  it 'not even one ring' do
    ornaments = ["bracelet", "anklet", "earring"]
    exactly_one_ring = ornaments.one? do |ornament|
      # Your code goes here
      ornament == "ring"
    end
    expect(exactly_one_ring).to eq(false)
  end

  it 'not just one ring' do
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    # Your code goes here
    exactly_one_ring = ornaments.one? {|ornament| ornament == "ring"}
    expect(exactly_one_ring).to eq(false)
  end

  it 'one time' do
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    exactly_one_time = words.one? {|word| word == "time"}
    expect(exactly_one_time).to eq(true)
  end

  it 'one double digit number' do
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    exactly_one_double_digit = numbers.one? {|number| number.digits.length == 2}
    expect(exactly_one_double_digit).to eq(true)
  end

  it 'not even one number' do
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    exactly_one_even_number = numbers.one? {|number| number % 2 == 0}
    expect(exactly_one_even_number).to eq(false)
  end
end
