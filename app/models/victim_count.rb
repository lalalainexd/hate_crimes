class VictimCount < ActiveRecord::Base
  belongs_to :bias
  belongs_to :offense

  attr_accessible :total, :bias_id, :offense_id

  def self.filter_by_bias(biases)
    joins(:bias).where(biases: {name: biases})
  end

  def self.filter_by_offense(offenses)
    joins(:offense).where(offenses: {name: offenses})
  end

end
