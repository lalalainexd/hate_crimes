class BiasType < ActiveRecord::Base

  has_many :biases, class_name: "Bias"

  attr_accessible :name

  def total_incidents
    biases.sum(:total_incidents)
  end

  def percentage_incidents
    (total_incidents.to_f/Bias.sum(:total_incidents).to_f) * 100
  end

  def to_param
    name
  end

  def self.find(bias_name)
    find_by_name(bias_name)
  end

end
