class Offense < ActiveRecord::Base

  belongs_to :offense_type

  attr_accessible :name

end
