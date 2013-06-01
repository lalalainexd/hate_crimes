class Api::V1::VictimCountsController < ApplicationController

  respond_to :json

  def index
    if params[:bias]
      @victim_counts = VictimCount.filter_by_bias(params[:bias])
    elsif params[:offense]
      @victim_counts = VictimCount.filter_by_offense(params[:offense])
    else
      @victim_counts = VictimCount.all
    end

    respond_with @victim_counts, root: false


  end
end
