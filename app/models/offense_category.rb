class OffenseCategory < ActiveRecord::Base

  has_many :offenses

  attr_accessible :name

end
