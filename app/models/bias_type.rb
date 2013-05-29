class BiasType < ActiveRecord::Base

  has_many :biases, class_name: "Bias"

  attr_accessible :name

  def total_incidents
    biases.sum(:total_incidents)
  end

  def percentage
    30

  end
end
