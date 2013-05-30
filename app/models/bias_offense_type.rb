class BiasOffenseType < ActiveRecord::Base
  belongs_to :bias
  belongs_to :offense_type
end
