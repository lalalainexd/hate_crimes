FactoryGirl.define do
  factory :victim_count do
    total 1
    bias
    offense
  end

  factory :victim_with_cat_bias, class: "VictimCount" do
    total 1
    association :bias, name: "nyan"
    association :offense, name: "pulled tail"

  end
end
