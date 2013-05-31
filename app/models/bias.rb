class Bias < ActiveRecord::Base

  attr_accessible :name

  belongs_to :bias_type, class_name: "Bias"
  has_many :sub_types, class_name: "Bias", foreign_key: "bias_type_id"

  has_many :victim_counts

  def self.all_general_types

    where(bias_type_id: nil)
  end

  def self.find parameterized_name
    where(name: parameterized_name.humanize.downcase).first
  end


  def to_param
    name.parameterize
  end

  def total_victims
    sub_types.empty? ? victim_counts.sum(:total) : subtotal_victim_counts.sum(:total)
  end

  private

  def subtotal_victim_counts
    VictimCount.joins(:bias).where(biases: {bias_type_id: id})

  end

end
