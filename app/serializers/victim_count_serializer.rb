class VictimCountSerializer < ActiveModel::Serializer
  attributes :total

  has_one :bias
  has_one :offense
end
