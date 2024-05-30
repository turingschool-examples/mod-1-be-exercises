# ./deliverable.rb
module Deliverable
  def confirmation(thing)
    "You got #{thing}."
 end

 def review
    "Please rate your order within 30 days." 
 end

 def delivery
  if self.class == AmazonOrder
    "Your order will arrive in 2 business days."
  elsif self.class == GrubhubOrder
    "Your food will arrive in 45-60 minutes."
  else
    "We don't know when your order will be delivered"
  end
 end
end
