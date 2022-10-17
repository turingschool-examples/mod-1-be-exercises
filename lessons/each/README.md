# each

## Overview

This repository was created as a resource for the BE Mod1 Lesson on `each`. It can be used in conjunction with the `Exploring #each` slide deck.
  - [Slides](https://docs.google.com/presentation/d/1Vn4CZC9eNFs7FCV6__V1WCKeY1dVJGj3etLGNfVDLU4/edit?usp=sharing)

## Setup

You do not need to fork this repository unless you want a copy in your own Github account. For the purposes of the lesson, you can:
  - Clone this repo

## Making it run

This repository has four folders. For the purposes of the lesson, the folder order is as follows:
  - vocabulary
  - warm_up
  - exercises
  - practice

In `exercises` folder you will see the following files. For the purposes of the lesson, the file order is as follows:
  - `warm_up.rb`
  - `using_each.rb`
  - `transforming_elements.rb`
  - `subset.rb`
  - `create_new.rb`

- In each of the files you will have a `collection` that you will write code for, implementing the `.each` method.
- Below the `collection` you will see commented out instructions on what you are trying to implement and the questions you will work to answer.
- These files will not implement tests so you will need to use a `p` or `puts` before the variable you want to output to your terminal.

  Example:
  ```ruby
  names = ["bob", "linda", "joe", "sally"]
  p names

  or

  names = ["bob", "linda", "joe", "sally"]

  names.each do |name|
    puts name
  end
  ```

- In your terminal make sure that you `cd` into the directory that you created and put your cloned repository into. Then `cd each`.
- In your terminal you will follow this format to run the file and have it print:
```ruby
ruby exercises/<name of file you want to run>
```
## Additional Resources

- [Turing Each Lesson](https://backend.turing.edu/module1/lessons/each)
