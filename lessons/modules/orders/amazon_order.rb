# ./amazon_order.rb
class AmazonOrder
  def confirmation(thing)
    puts "You got #{thing}."
  end

  def delivery
    puts "Your order will arrive in 2 business days."
  end
  
  def review
    puts "Please rate your order within 30 days."
  end
end
