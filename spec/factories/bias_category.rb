FactoryGirl.define do

  factory :bias_category do
    name "anti turtles"
  end

  factory :land_bias_category, class: "BiasCategory" do
    name "land"
  end

  factory :water_bias_category, class: "BiasCategory" do
    name "water"
  end
end
