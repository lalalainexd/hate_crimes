class Bias < ActiveRecord::Base
  set_table_name :biases
  belongs_to :bias_type

  attr_accessible :name, :total_incidents

end
