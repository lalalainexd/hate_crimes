class Offense < ActiveRecord::Base

  attr_accessible :name

  belongs_to :offense_type, class_name: "Offense"
  has_many :sub_types, class_name: "Offense", foreign_key: "offense_type_id"
  has_many :victim_counts

  def self.all_general_types
    where(offense_type_id: nil)
  end

  def total_victims
      victim_counts.empty? ? victim_counts.sum(:total) : subtotal_victim_counts.sum(:total)
  end

  private

  def subtotal_victim_counts

      VictimCount.joins(:offense).where(offenses: {offense_type_id: id})

  end


end
