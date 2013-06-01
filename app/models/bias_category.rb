class BiasCategory < ActiveRecord::Base

  has_many :biases

  attr_accessible :name

end
