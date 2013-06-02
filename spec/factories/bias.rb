FactoryGirl.define do
  factory :bias do
    name "anti turtles"
  end

  factory :turtle_bias, class: "Bias" do
    name "turtles"
    association :bias_category, name: "land"
  end

  factory :cat_bias, class: "Bias" do
    name "cats"
    association :bias_category, name: "land"
  end

  factory :fish_bias, class: "Bias" do
    name "fish"
    association :bias_category, name: "water"
  end

end
