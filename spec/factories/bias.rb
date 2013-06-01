FactoryGirl.define do
  factory :bias do
    name "anti turtles"
  end

  factory :turtle_bias, class: "Bias" do
    name "turtle"
  end

  factory :cat_bias, class: "Bias" do
    name "cat"
  end

  factory :goat_bias, class: "Bias" do
    name "goat"
  end
end
