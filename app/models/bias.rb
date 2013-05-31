class Bias < ActiveRecord::Base

  attr_accessible :name

  belongs_to :bias_category

  has_many :victim_counts


end
