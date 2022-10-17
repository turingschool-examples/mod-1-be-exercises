# ./runner.rb
require "./amazon_order.rb"
require "./grubhub_order.rb"

amazon = AmazonOrder.new
grub   = GrubhubOrder.new

amazon.confirmation
grub.confirmation

amazon.delivery
grub.delivery

amazon.review
grub.review
