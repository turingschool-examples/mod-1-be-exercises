# Reunion

## Setup

* Fork this Repository
* Clone YOUR fork
* Complete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

## Tasks

We're developing a small application to split expenses after a group of friends get together for a reunion. This will track how much each person spent on a particular activity, how much each person owed, and ultimately print out a summary of how much each person owes or is owed. Use tests to drive your development.

### Iteration 1: Creating Activities

Use TDD to create an Activity class that responds to the following interaction pattern.

For the `add_participant` method, the first argument represents the name of someone who participated in the activity, and the second argument represents how much they paid for the activity.

```ruby
pry(main)> require './lib/activity'
# => true

pry(main)> activity = Activity.new("Brunch")
# => #<Activity:0x007fe4ca1df568 ...>

pry(main)> activity.name
# => "Brunch"

pry(main)> activity.participants
# => {}

pry(main)> activity.add_participant("Maria", 20)

pry(main)> activity.participants
# => {"Maria" => 20}

pry(main)> activity.total_cost
# => 20

pry(main)> activity.add_participant("Luther", 40)

pry(main)> activity.participants
# => {"Maria" => 20, "Luther" => 40}

pry(main)> activity.total_cost
# => 60
```

### Iteration 2: Activity Calculations and creating Reunions

Use TDD to update the Activity class so that it responds to the following interaction pattern.

For the `split` method, it is assumed that the cost is evenly distributed amongst participants. It should be the total cost divided by the number of participants.

For the `owed` method, the amount each person owes is the difference between what they paid and the `split`. If a participant paid less than their fair share they owe a positive amount. If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).

```ruby
pry(main)> require './lib/activity'
# => true

pry(main)> activity = Activity.new("Brunch")
# => #<Activity:0x007fe4ca1df568 ...>

pry(main)> activity.add_participant("Maria", 20)

pry(main)> activity.add_participant("Luther", 40)

pry(main)> activity.total_cost
# => 60

pry(main)> activity.split
# => 30

pry(main)> activity.owed
# => {"Maria" => 10, "Luther" => -10}
```

Additionaly, use TDD to create a Reunion class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/reunion'
# => true

pry(main)> reunion = Reunion.new("1406 BE")
# => #<Reunion:0x007fe4ca1defc8 ...>

pry(main)> reunion.name
# => "1406 BE"

pry(main)> reunion.activities
# => []

pry(main)> activity_1 = Activity.new("Brunch")
# => #<Activity:0x007fe4ca1d9438 ...>

pry(main)> reunion.add_activity(activity_1)

pry(main)> reunion.activities
# => [#<Activity:0x007fe4ca1d9438 ...>]
```

### Iteration 3: Reunion Calculations

Use TDD to update your Reunion class to respond to the following interaction pattern.

For the `breakout` method, the key is a person's name and the value is what they owe for the whole reunion. This should be the combination of what they owe from all activities. Again, a negative value means they are owed money. In the following example, `"Maria"` owes 10 from brunch and is owed 20 from drinks, so her final amount owed in the breakout is -10.

```ruby
pry(main)> require './lib/reunion'
# => true

pry(main)> reunion = Reunion.new("1406 BE")
# => #<Reunion:0x007fe4ca1defc8 ...>

pry(main)> activity_1 = Activity.new("Brunch")

pry(main)> activity_1.add_participant("Maria", 20)

pry(main)> activity_1.add_participant("Luther", 40)

pry(main)> reunion.add_activity(activity_1)

pry(main)> reunion.total_cost
# => 60

pry(main)> activity_2 = Activity.new("Drinks")

pry(main)> activity_2.add_participant("Maria", 60)

pry(main)> activity_2.add_participant("Luther", 60)

pry(main)> activity_2.add_participant("Louis", 0)

pry(main)> reunion.add_activity(activity_2)

pry(main)> reunion.total_cost
# => 180

pry(main)> reunion.breakout
# => {"Maria" => -10, "Luther" => -30, "Louis" => 40}

pry(main)> reunion.summary
# => "Maria: -10\nLuther: -30\nLouis: 40"

pry(main)> puts reunion.summary
Maria: -10
Luther: -30
Louis: 40
```

### Iteration 4: Detailed Breakout

Use TDD to create a `detailed_breakout` method. This method should return a hash with a person's name as a key, and an array as a value. That array should contain hashes that represent what that person owes for a particular activity. Specifically, each of those hashes should have three keys:

* `:activity` - the name of the activity
* `:payees` - an array of the people who owe them for the activity if they are owed money, or an array of the people who they owe if they owe money.
* `:amount` - the amount of money to pay to/from *each* of the payees

The reunion class should respond to the following interaction pattern:

```ruby
pry(main)> reunion = Reunion.new("1406 BE")

# One person owes one person
pry(main)> activity_1 = Activity.new("Brunch")
pry(main)> activity_1.add_participant("Maria", 20)
pry(main)> activity_1.add_participant("Luther", 40)

# One person owes two people
pry(main)> activity_2 = Activity.new("Drinks")
pry(main)> activity_2.add_participant("Maria", 60)
pry(main)> activity_2.add_participant("Luther", 60)
pry(main)> activity_2.add_participant("Louis", 0)

# Two people owe one person
pry(main)> activity_3 = Activity.new("Bowling")
pry(main)> activity_3.add_participant("Maria", 0)
pry(main)> activity_3.add_participant("Luther", 0)
pry(main)> activity_3.add_participant("Louis", 30)

# Two people owe two people
pry(main)> activity_4 = Activity.new("Jet Skiing")
pry(main)> activity_4.add_participant("Maria", 0)
pry(main)> activity_4.add_participant("Luther", 0)
pry(main)> activity_4.add_participant("Louis", 40)
pry(main)> activity_4.add_participant("Nemo", 40)

pry(main)> reunion.add_activity(activity_1)
pry(main)> reunion.add_activity(activity_2)
pry(main)> reunion.add_activity(activity_3)
pry(main)> reunion.add_activity(activity_4)

pry(main)> reunion.detailed_breakout
# =>
# {
#   "Maria" => [
#     {
#       activity: "Brunch",
#       payees: ["Luther"],
#       amount: 10
#     },
#     {
#       activity: "Drinks",
#       payees: ["Louis"],
#       amount: -20
#     },
#     {
#       activity: "Bowling",
#       payees: ["Louis"],
#       amount: 10
#     },
#     {
#       activity: "Jet Skiing",
#       payees: ["Louis", "Nemo"],
#       amount: 10
#     }
#   ],
#   "Luther" => [
#     {
#       activity: "Brunch",
#       payees: ["Maria"],
#       amount: -10
#     },
#     {
#       activity: "Drinks",
#       payees: ["Louis"],
#       amount: -20
#     },
#     {
#       activity: "Bowling",
#       payees: ["Louis"],
#       amount: 10
#     },
#     {
#       activity: "Jet Skiing",
#       payees: ["Louis", "Nemo"],
#       amount: 10
#     }
#   ],
#   "Louis" => [
#     {
#       activity: "Drinks",
#       payees: ["Maria", "Luther"],
#       amount: 20
#     },
#     {
#       activity: "Bowling",
#       payees: ["Maria", "Luther"],
#       amount: -10
#     },
#     {
#       activity: "Jet Skiing",
#       payees: ["Maria", "Luther"],
#       amount: -10
#     }
#   ],
#   "Nemo" => [
#     {
#       activity: "Jet Skiing",
#       payees: ["Maria", "Luther"],
#       amount: -10
#     }
#   ]
# }
```
