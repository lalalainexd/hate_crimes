class OffenseCategorySerializer < ActiveModel::Serializer
  attributes :name

  has_many :offenses
end
