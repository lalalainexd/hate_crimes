class Offense < ActiveRecord::Base

  attr_accessible :name, :offense_category

  belongs_to :offense_category
  has_many :victim_counts


end
