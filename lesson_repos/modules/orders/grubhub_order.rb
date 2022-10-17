# ./grubhub_order.rb
class GrubhubOrder
  def confirmation(thing)
    puts "You got #{thing}."
  end

  def delivery
    puts "Your food will arrive in 45-60 minutes."
  end
  
  def review
    puts "Please rate your order within 30 days."
  end
end
