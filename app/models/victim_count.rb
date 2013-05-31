class VictimCount < ActiveRecord::Base
  belongs_to :bias
  belongs_to :offense

  attr_accessible :total, :bias_id, :offense_id
end
