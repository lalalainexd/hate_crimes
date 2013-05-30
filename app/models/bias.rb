class Bias < ActiveRecord::Base

  attr_accessible :name

  belongs_to :bias_type, class_name: "Bias"
  has_many :sub_types, class_name: "Bias", foreign_key: "bias_type_id"


end
