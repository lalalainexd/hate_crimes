class VictimCount < ActiveRecord::Base
  belongs_to :bias
  belongs_to :offense

  attr_accessible :total
end
