class Bias < ActiveRecord::Base
  belongs_to :bias_type
  has_many :bias_offense_types
  has_many :offense_types, through: :bias_offense_types

  attr_accessible :name, :total_incidents

  def to_param
    name
  end

  def self.find(name)
    where(name: name).first
  end

end
