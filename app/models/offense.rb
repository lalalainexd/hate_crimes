class Offense < ActiveRecord::Base

  attr_accessible :name, :offense_category

  belongs_to :offense_category
  has_many :victim_counts

  def self.filter_by categories
joins(:offense_category).where(offense_categories: {name: categories})
  end


end
