class BiasType < ActiveRecord::Base

  has_many :biases

  attr_accessible :name

  def total_incidents
    biases.sum(:total_incidents)
  end

  def to_param
    name
  end

  def self.find(bias_name)
    find_by_name(bias_name)
  end

end
