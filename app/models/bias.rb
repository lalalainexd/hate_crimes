class Bias < ActiveRecord::Base

  attr_accessible :name, :bias_category

  belongs_to :bias_category

  has_many :victim_counts

  def self.filter_by category
  joins(:bias_category).where(bias_categories: {name: category})

  end


end
