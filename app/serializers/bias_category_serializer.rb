class BiasCategorySerializer < ActiveModel::Serializer
  attributes :name
  has_many :biases
end
