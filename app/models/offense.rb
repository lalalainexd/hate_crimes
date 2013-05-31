class Offense < ActiveRecord::Base

  attr_accessible :name

  belongs_to :offense_category
  has_many :victim_counts


end
