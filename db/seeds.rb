#Bias Categories
puts "creating BiasCategories"
race = BiasCategory.create!(name: "race")
religion = BiasCategory.create!(name: "religion")
sexual_orientation = BiasCategory.create!(name: "sexual orientation")
ethnicity = BiasCategory.create!(name: "ethnicity")
disability = BiasCategory.create!(name: "disability")

#Biases
puts "creating Biases for race category"
white = Bias.create!(name: "anti-whte", bias_category: race)
black = Bias.create!(name: "anti-black", bias_category: race)
american_indian = Bias.create!(name: "anti-american indian or alaskan native", bias_category: race)
asian = Bias.create!(name: "anti-asian or pacific islander", bias_category: race)

puts "creating Biases for religion category"
jewish = Bias.create!(name: "anti-jewish", bias_category: religion)
catholic = Bias.create!(name: "anti-catholic", bias_category: religion)
protestant = Bias.create!(name: "anti-protestant", bias_category: religion)
islamic = Bias.create!(name: "anti-islamic", bias_category: religion)
atheism = Bias.create!(name: "anti-atheism", bias_category: religion)

puts "creating Biases for sexual orientation category"
male_homosexual = Bias.create!(name: "anti-male homosexual", bias_category: sexual_orientation)
female_homosexual = Bias.create!(name: "anti-female homosexual", bias_category: sexual_orientation)
homosexual = Bias.create!(name: "anti-homosexual", bias_category: sexual_orientation)
heterosexual = Bias.create!(name: "anti-heterosexual", bias_category: sexual_orientation)
bisexual = Bias.create!(name: "anti-bisexual", bias_category: sexual_orientation)

puts "creating Biases for ethnicity category"
hispanic = Bias.create!(name: "anti-hispanic", bias_category: ethnicity)
other_ethnicity = Bias.create!(name: "anti-other ethnicity", bias_category: ethnicity)

puts "creating Biases for disability category"
physical = Bias.create!(name: "anti-physical", bias_category: disability)
mental = Bias.create!(name: "anti-mental", bias_category: disability)

#Offense Categories
puts "creating OffenseCategories"
person = OffenseCategory.create!(name: "person")
property = OffenseCategory.create!(name: "property")

#Offenses
puts "creating Offenses for person category"
murder = Offense.create!(name: "murder", offense_category: person)
rape = Offense.create!(name: "rape", offense_category: person)
aggravated_assault = Offense.create!(name: "aggravated assault", offense_category: person)
simple_assault = Offense.create!(name: "simple assault", offense_category: person)
intimidation = Offense.create!(name: "intimidation", offense_category: person)

puts "creating Offenses for property category"
robbery = Offense.create!(name: "robbery", offense_category: property)
burglary = Offense.create!(name: "burglary", offense_category: property)
theft = Offense.create!(name: "larceny-theft", offense_category: property)
vehicle = Offense.create!(name: "motorvehicle-theft", offense_category: property)
arson = Offense.create!(name: "arson", offense_category: property)
vandalism = Offense.create!(name: "vandalism", offense_category: property)

#VictimCounts
puts "creating VictimCounts for murder"
VictimCount.create!(total: 0, bias: white, offense: murder)
VictimCount.create!(total: 1, bias: black, offense: murder)
VictimCount.create!(total: 0, bias: american_indian, offense: murder)
VictimCount.create!(total: 0, bias: asian, offense: murder)

VictimCount.create!(total: 0, bias: jewish, offense: murder)
VictimCount.create!(total: 0, bias: catholic, offense: murder)
VictimCount.create!(total: 0, bias: protestant, offense: murder)
VictimCount.create!(total: 0, bias: atheism, offense: murder)

VictimCount.create!(total: 1, bias: male_homosexual, offense: murder)
VictimCount.create!(total: 0, bias: female_homosexual, offense: murder)
VictimCount.create!(total: 0, bias: homosexual, offense: murder)
VictimCount.create!(total: 0, bias: heterosexual, offense: murder)
VictimCount.create!(total: 1, bias: bisexual, offense: murder)

VictimCount.create!(total: 1, bias: hispanic, offense: murder)
VictimCount.create!(total: 0, bias: other_ethnicity, offense: murder)

VictimCount.create!(total: 0, bias: physical, offense: murder)
VictimCount.create!(total: 0, bias: mental, offense: murder)

puts "creating VictimCounts for rape"
VictimCount.create!(total: 2, bias: white, offense: rape)
VictimCount.create!(total: 0, bias: black, offense: rape)
VictimCount.create!(total: 0, bias: american_indian, offense: rape)
VictimCount.create!(total: 0, bias: asian, offense: rape)

VictimCount.create!(total: 0, bias: jewish, offense: rape)
VictimCount.create!(total: 0, bias: catholic, offense: rape)
VictimCount.create!(total: 0, bias: protestant, offense: rape)
VictimCount.create!(total: 0, bias: atheism, offense: rape)

VictimCount.create!(total: 0, bias: male_homosexual, offense: rape)
VictimCount.create!(total: 1, bias: female_homosexual, offense: rape)
VictimCount.create!(total: 0, bias: homosexual, offense: rape)
VictimCount.create!(total: 0, bias: heterosexual, offense: rape)
VictimCount.create!(total: 0, bias: bisexual, offense: rape)

VictimCount.create!(total: 1, bias: hispanic, offense: rape)
VictimCount.create!(total: 0, bias: other_ethnicity, offense: rape)

VictimCount.create!(total: 0, bias: physical, offense: rape)
VictimCount.create!(total: 0, bias: mental, offense: rape)

puts "creating VictimCounts for aggravated assault"
VictimCount.create!(total: 92, bias: white, offense: aggravated_assault)
VictimCount.create!(total: 315, bias: black, offense: aggravated_assault)
VictimCount.create!(total: 3, bias: american_indian, offense: aggravated_assault)
VictimCount.create!(total:150, bias: asian, offense: aggravated_assault)

VictimCount.create!(total: 12, bias: jewish, offense: aggravated_assault)
VictimCount.create!(total: 0, bias: catholic, offense: aggravated_assault)
VictimCount.create!(total: 0, bias: protestant, offense: aggravated_assault)
VictimCount.create!(total: 17, bias: islamic, offense: aggravated_assault)
VictimCount.create!(total: 0, bias: atheism, offense: aggravated_assault)

VictimCount.create!(total: 158, bias: male_homosexual, offense: aggravated_assault)
VictimCount.create!(total: 23, bias: female_homosexual, offense: aggravated_assault)
VictimCount.create!(total: 58, bias: homosexual, offense: aggravated_assault)
VictimCount.create!(total: 3, bias: heterosexual, offense: aggravated_assault)
VictimCount.create!(total: 5, bias: bisexual, offense: aggravated_assault)

VictimCount.create!(total: 112, bias: hispanic, offense: aggravated_assault)
VictimCount.create!(total: 42, bias: other_ethnicity, offense: aggravated_assault)

VictimCount.create!(total: 4, bias: physical, offense: aggravated_assault)
VictimCount.create!(total: 2, bias: mental, offense: aggravated_assault)
puts "creating VictimCounts for simple assault"
VictimCount.create!(total: 192, bias: white, offense: simple_assault)
VictimCount.create!(total: 486, bias: black, offense: simple_assault)
VictimCount.create!(total: 12, bias: american_indian, offense: simple_assault)
VictimCount.create!(total: 42, bias: asian, offense: simple_assault)

VictimCount.create!(total: 65, bias: jewish, offense: simple_assault)
VictimCount.create!(total: 5, bias: catholic, offense: simple_assault)
VictimCount.create!(total: 1, bias: protestant, offense: simple_assault)
VictimCount.create!(total: 46, bias: islamic, offense: simple_assault)
VictimCount.create!(total: 0, bias: atheism, offense: simple_assault)

VictimCount.create!(total: 301, bias: male_homosexual, offense: simple_assault)
VictimCount.create!(total: 40, bias: female_homosexual, offense: simple_assault)
VictimCount.create!(total: 139, bias: homosexual, offense: simple_assault)
VictimCount.create!(total: 7, bias: heterosexual, offense: simple_assault)
VictimCount.create!(total: 8, bias: bisexual, offense: simple_assault)

VictimCount.create!(total: 183, bias: hispanic, offense: simple_assault)
VictimCount.create!(total: 93, bias: other_ethnicity, offense: simple_assault)

VictimCount.create!(total: 8, bias: physical, offense: simple_assault)
VictimCount.create!(total: 12, bias: mental, offense: simple_assault)

puts "creating VictimCounts for intimidation"
VictimCount.create!(total: 157, bias: white, offense: intimidation)
VictimCount.create!(total: 933, bias: black, offense: intimidation)
VictimCount.create!(total: 2, bias: american_indian, offense: intimidation)
VictimCount.create!(total: 73, bias: asian, offense: intimidation)

VictimCount.create!(total: 201, bias: jewish, offense: intimidation)
VictimCount.create!(total: 7, bias: catholic, offense: intimidation)
VictimCount.create!(total: 3, bias: protestant, offense: intimidation)
VictimCount.create!(total: 69, bias: islamic, offense: intimidation)
VictimCount.create!(total: 1, bias: atheism, offense: intimidation)

VictimCount.create!(total: 190, bias: male_homosexual, offense: intimidation)
VictimCount.create!(total: 52, bias: female_homosexual, offense: intimidation)
VictimCount.create!(total: 84, bias: homosexual, offense: intimidation)
VictimCount.create!(total: 1, bias: heterosexual, offense: intimidation)
VictimCount.create!(total: 4, bias: bisexual, offense: intimidation)

VictimCount.create!(total: 227, bias: hispanic, offense: intimidation)
VictimCount.create!(total: 120, bias: other_ethnicity, offense: intimidation)

VictimCount.create!(total: 5, bias: physical, offense: intimidation)
VictimCount.create!(total: 0, bias: mental, offense: intimidation)

puts "creating VictimCounts for robbery"
VictimCount.create!(total: 32, bias: white, offense: robbery)
VictimCount.create!(total: 19, bias: black, offense: robbery)
VictimCount.create!(total: 1, bias: american_indian, offense: robbery)
VictimCount.create!(total: 0, bias: asian, offense: robbery)

VictimCount.create!(total: 9, bias: jewish, offense: robbery)
VictimCount.create!(total: 0, bias: catholic, offense: robbery)
VictimCount.create!(total: 0, bias: protestant, offense: robbery)
VictimCount.create!(total: 1, bias: islamic, offense: robbery)
VictimCount.create!(total: 0, bias: atheism, offense: robbery)

VictimCount.create!(total: 39, bias: male_homosexual, offense: robbery)
VictimCount.create!(total: 2, bias: female_homosexual, offense: robbery)
VictimCount.create!(total: 15, bias: homosexual, offense: robbery)
VictimCount.create!(total: 0, bias: heterosexual, offense: robbery)
VictimCount.create!(total: 0, bias: bisexual, offense: robbery)

VictimCount.create!(total: 16, bias: hispanic, offense: robbery)
VictimCount.create!(total: 7, bias: other_ethnicity, offense: robbery)

VictimCount.create!(total: 0, bias: physical, offense: robbery)
VictimCount.create!(total: 3, bias: mental, offense: robbery)

puts "creating VictimCounts for burglary"
VictimCount.create!(total: 22, bias: white, offense: burglary)
VictimCount.create!(total: 25, bias: black, offense: burglary)
VictimCount.create!(total: 1, bias: american_indian, offense: burglary)
VictimCount.create!(total: 7, bias: asian, offense: burglary)

VictimCount.create!(total: 6, bias: jewish, offense: burglary)
VictimCount.create!(total: 6, bias: catholic, offense: burglary)
VictimCount.create!(total: 5, bias: protestant, offense: burglary)
VictimCount.create!(total: 1, bias: islamic, offense: burglary)
VictimCount.create!(total: 1, bias: atheism, offense: burglary)

VictimCount.create!(total: 6, bias: male_homosexual, offense: burglary)
VictimCount.create!(total: 4, bias: female_homosexual, offense: burglary)
VictimCount.create!(total: 8, bias: homosexual, offense: burglary)
VictimCount.create!(total: 0, bias: heterosexual, offense: burglary)
VictimCount.create!(total: 1, bias: bisexual, offense: burglary)

VictimCount.create!(total: 9, bias: hispanic, offense: burglary)
VictimCount.create!(total: 6, bias: other_ethnicity, offense: burglary)

VictimCount.create!(total: 0, bias: physical, offense: burglary)
VictimCount.create!(total: 1, bias: mental, offense: burglary)

puts "creating VictimCounts for theft"
VictimCount.create!(total: 49, bias: white, offense: theft)
VictimCount.create!(total: 16, bias: black, offense: theft)
VictimCount.create!(total: 17, bias: american_indian, offense: theft)
VictimCount.create!(total: 1, bias: asian, offense: theft)

VictimCount.create!(total: 8, bias: jewish, offense: theft)
VictimCount.create!(total: 10, bias: catholic, offense: theft)
VictimCount.create!(total: 3, bias: protestant, offense: theft)
VictimCount.create!(total: 3, bias: islamic, offense: theft)
VictimCount.create!(total: 1, bias: atheism, offense: theft)

VictimCount.create!(total: 12, bias: male_homosexual, offense: theft)
VictimCount.create!(total: 2, bias: female_homosexual, offense: theft)
VictimCount.create!(total: 3, bias: homosexual, offense: theft)
VictimCount.create!(total: 1, bias: heterosexual, offense: theft)
VictimCount.create!(total: 6, bias: bisexual, offense: theft)

VictimCount.create!(total: 11, bias: hispanic, offense: theft)
VictimCount.create!(total: 9, bias: other_ethnicity, offense: theft)

VictimCount.create!(total: 3, bias: physical, offense: theft)
VictimCount.create!(total: 4, bias: mental, offense: theft)

puts "creating VictimCounts for vehicle"
VictimCount.create!(total: 6, bias: white, offense: vehicle)
VictimCount.create!(total: 1, bias: black, offense: vehicle)
VictimCount.create!(total: 0, bias: american_indian, offense: vehicle)
VictimCount.create!(total: 0, bias: asian, offense: vehicle)

VictimCount.create!(total: 0, bias: jewish, offense: vehicle)
VictimCount.create!(total: 1, bias: catholic, offense: vehicle)
VictimCount.create!(total: 0, bias: protestant, offense: vehicle)
VictimCount.create!(total: 0, bias: islamic, offense: vehicle)
VictimCount.create!(total: 0, bias: atheism, offense: vehicle)

VictimCount.create!(total: 1, bias: male_homosexual, offense: vehicle)
VictimCount.create!(total: 1, bias: female_homosexual, offense: vehicle)
VictimCount.create!(total: 1, bias: homosexual, offense: vehicle)
VictimCount.create!(total: 0, bias: heterosexual, offense: vehicle)
VictimCount.create!(total: 1, bias: bisexual, offense: vehicle)

VictimCount.create!(total: 3, bias: hispanic, offense: vehicle)
VictimCount.create!(total: 1, bias: other_ethnicity, offense: vehicle)

VictimCount.create!(total: 0, bias: physical, offense: vehicle)
VictimCount.create!(total: 0, bias: mental, offense: vehicle)

puts "creating VictimCounts for arson"
VictimCount.create!(total: 0, bias: white, offense: arson)
VictimCount.create!(total: 11, bias: black, offense: arson)
VictimCount.create!(total: 0, bias: american_indian, offense: arson)
VictimCount.create!(total: 0, bias: asian, offense: arson)

VictimCount.create!(total: 2, bias: jewish, offense: arson)
VictimCount.create!(total: 0, bias: catholic, offense: arson)
VictimCount.create!(total: 1, bias: protestant, offense: arson)
VictimCount.create!(total: 1, bias: islamic, offense: arson)
VictimCount.create!(total: 0, bias: atheism, offense: arson)

VictimCount.create!(total: 5, bias: male_homosexual, offense: arson)
VictimCount.create!(total: 0, bias: female_homosexual, offense: arson)
VictimCount.create!(total: 2, bias: homosexual, offense: arson)
VictimCount.create!(total: 0, bias: heterosexual, offense: arson)
VictimCount.create!(total: 0, bias: bisexual, offense: arson)

VictimCount.create!(total: 5, bias: hispanic, offense: arson)
VictimCount.create!(total: 2, bias: other_ethnicity, offense: arson)

VictimCount.create!(total: 0, bias: physical, offense: arson)
VictimCount.create!(total: 0, bias: mental, offense: arson)

puts "creating VictimCounts for vandalism"
VictimCount.create!(total: 111, bias: white, offense: vandalism)
VictimCount.create!(total: 781, bias: black, offense: vandalism)
VictimCount.create!(total: 5, bias: american_indian, offense: vandalism)
VictimCount.create!(total: 52, bias: asian, offense: vandalism)

VictimCount.create!(total: 619, bias: jewish, offense: vandalism)
VictimCount.create!(total: 31, bias: catholic, offense: vandalism)
VictimCount.create!(total: 33, bias: protestant, offense: vandalism)
VictimCount.create!(total: 47, bias: islamic, offense: vandalism)
VictimCount.create!(total: 4, bias: atheism, offense: vandalism)

VictimCount.create!(total: 134, bias: male_homosexual, offense: vandalism)
VictimCount.create!(total: 39, bias: female_homosexual, offense: vandalism)
VictimCount.create!(total: 92, bias: homosexual, offense: vandalism)
VictimCount.create!(total: 8, bias: heterosexual, offense: vandalism)
VictimCount.create!(total: 0, bias: bisexual, offense: vandalism)

VictimCount.create!(total: 105, bias: hispanic, offense: vandalism)
VictimCount.create!(total: 78, bias: other_ethnicity, offense: vandalism)

VictimCount.create!(total: 0, bias: physical, offense: vandalism)
VictimCount.create!(total: 1, bias: mental, offense: vandalism)
