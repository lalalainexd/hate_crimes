class OffensesController < ApplicationController
  def index
    @offenses = Offense.all_general_types
  end

end
