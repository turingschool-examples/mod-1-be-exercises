# socials Directory

## Contents
```
status_update.rb
photo.rb
commentable.rb (Empty file)
```

## Exercise
  1. Create a `pry` session to implement the following interaction pattern. Take note of what is displayed when the `display` method is called.

<!-- **StatusUpdate** -->
```
require "./status_update.rb"

status = StatusUpdate.new("I'm learning about modules in Ruby #nbd")

status.display
=> What is displayed here?

status.add_comment("Oh cool!")
status.add_comment("Just wait until you learn about inheritance.")
status.add_comment("What is a module?")
status.add_comment("I'm so proud of you! Love, mom.")

status.display
=> What is displayed here?

status.remove_comment(3)

status.display
=> What is displayed here?
```

<!-- **Photo** -->
```
require "./photo.rb"

photo = Photo.new("https://images.pexels.com/photos/2280545/pexels-photo-2280545.jpeg", "This is what I ate for breakfast #yum #hashtag")

photo.display
=> What is displayed here?

photo.add_comment("That looks delicious!")
photo.add_comment("Ooooh, will you cook for me?")
photo.add_comment("Brunch next Sunday?")

photo.display
=> What is displayed here?

photo.remove_comment(1)

photo.display
=> What is displayed here?
```

  2. Extract any duplicated code into the `Commentable` module which we’ll include within each class.
    * Oftentimes, you’ll see modules named with the convention “-able”, like `Comparable` or `Enumerable`.

  1. To get access to the methods defined in the module, include the module at the beginning of the class.
    * Using include allows you to call the module methods on an instance of the class where it is included.

  1. Get back into `pry` and try out the interaction pattern below. Again, take note of what is displayed when the `display` method is called.

```
require "./status_update.rb"
require "./photo.rb"

status = StatusUpdate.new("I'm learning about modules in Ruby #nbd")

status.display

status.add_comment("Oh cool!")
status.add_comment("Whoa...")

status.display

status.remove_comment(1)

status.display

photo = Photo.new("https://images.pexels.com/photos/2280545/pexels-photo-2280545.jpeg", "This is what I ate for breakfast #yum #hashtag")

photo.display

photo.add_comment("That looks delicious!")
photo.add_comment("Pancakes!")

photo.display

photo.remove_comment(2)

photo.display
```

## Questions
  1. What is similar/different between the two main classes?
  2. What design principle(s) are we breaking? Prepare to explain.
  3. How might we use mixins to make our code better?
