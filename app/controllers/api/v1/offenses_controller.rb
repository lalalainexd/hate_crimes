class Api::V1::OffensesController < ApplicationController
  respond_to :json
  def index
    if params[:category]
      @offenses = Offense.filter_by(params[:category])
    else
      @offenses = Offense.all
    end
    respond_with @offenses, root: false
  end

end
