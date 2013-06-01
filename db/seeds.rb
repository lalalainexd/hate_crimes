#Bias Categories
puts "creating BiasCategories"
land_bias = BiasCategory.create!(name: "land")
water_bias = BiasCategory.create!(name: "water")

#Biases
puts "creating Biases"
cat = Bias.create!(name: "cat", bias_category: land_bias)
turtle = Bias.create!(name: "turtle", bias_category: land_bias)

fish = Bias.create!(name: "fish", bias_category: water_bias)
dolphin = Bias.create!(name: "dolphin", bias_category: water_bias)

#Offense Categories
puts "creating OffenseCategories"
person = OffenseCategory.create!(name: "person")
property = OffenseCategory.create!(name: "property")

#Offenses
puts "creating Offenses"
poked = Offense.create!(name: "poked", offense_category: person)
dropped = Offense.create!(name: "dropped", offense_category: person)

vandalism = Offense.create!(name: "vandalism", offense_category: property)
arson = Offense.create!(name: "arson", offense_category: property)

#VictimCounts
puts "creating VictimCounts"
VictimCount.create!(total: 1, bias: cat, offense: poked)
VictimCount.create!(total: 2, bias: cat, offense: dropped)
VictimCount.create!(total: 3, bias: cat, offense: vandalism)
VictimCount.create!(total: 4, bias: cat, offense: arson)

VictimCount.create!(total: 11, bias: turtle, offense: poked)
VictimCount.create!(total: 12, bias: turtle, offense: dropped)
VictimCount.create!(total: 13, bias: turtle, offense: vandalism)
VictimCount.create!(total: 14, bias: turtle, offense: arson)

VictimCount.create!(total: 21, bias: fish, offense: poked)
VictimCount.create!(total: 22, bias: fish, offense: dropped)
VictimCount.create!(total: 23, bias: fish, offense: vandalism)
VictimCount.create!(total: 21, bias: fish, offense: poked)

VictimCount.create!(total: 32, bias: dolphin, offense: dropped)
VictimCount.create!(total: 33, bias: dolphin, offense: vandalism)
VictimCount.create!(total: 34, bias: dolphin, offense: arson)
VictimCount.create!(total: 34, bias: dolphin, offense: arson)
