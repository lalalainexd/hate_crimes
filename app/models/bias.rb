class Bias < ActiveRecord::Base

  attr_accessible :name, :bias_category

  belongs_to :bias_category

  has_many :victim_counts


end
