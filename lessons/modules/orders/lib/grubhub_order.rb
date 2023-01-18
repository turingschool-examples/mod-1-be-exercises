# ./grubhub_order.rb
class GrubhubOrder
  def confirmation(thing)
    "You got #{thing}."
  end

  def delivery
    "Your food will arrive in 45-60 minutes."
  end

  def review
    "Please rate your order within 30 days."
  end
end
