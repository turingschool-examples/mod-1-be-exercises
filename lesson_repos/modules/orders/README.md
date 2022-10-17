# orders Directory

## Contents
```
grubhub_order.rb
amazon_order.rb
runner.rb
online_order.rb (Empty file)
```

## Background
* The `runner` file creates two objects: an `AmazonOrder` object and a `GrubhubOrder` object.
* The `confirmation`, `delivery`, and `review` methods are called on each object in a runner file.

```
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
```

## Questions
  1. How might we use a mixin to make this code better?
  1. What happens when you run the runner file after creating and including a module?
