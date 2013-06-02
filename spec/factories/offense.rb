FactoryGirl.define do
  factory :offense do
    name "poked with a stick"
  end

  factory :poked_offense, class: Offense do
    name "poked"
    association :offense_category, name: "person"
  end

  factory :dropped_offense, class: Offense do
    name "dropped"
    association :offense_category, name: "person"
  end

  factory :arson_offense, class: Offense do
    name "arson"
    association :offense_category, name: "property"
  end

end
