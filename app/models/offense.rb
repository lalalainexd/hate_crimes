class Offense < ActiveRecord::Base

  attr_accessible :name

  belongs_to :offense_type, class_name: "Offense"
  has_many :sub_types, class_name: "Offense", foreign_key: "offense_type_id"


end
