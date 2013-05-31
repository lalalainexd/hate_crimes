class Api::V1::VictimCountsController < ApplicationController

  respond_to :json

  def index

    if params[:bias]
      @victim_counts = VictimCount.joins(:bias).where(biases: {name: params[:bias]})
    else
    @victim_counts = VictimCount.all
    end

    respond_with @victim_counts, root: false


  end
end
