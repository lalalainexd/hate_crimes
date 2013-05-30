class OffenseType < ActiveRecord::Base

  has_many :bias_offense_types
  has_many :biases, through: :bias_offense_types
  has_many :offenses

  attr_accessible :name

end
