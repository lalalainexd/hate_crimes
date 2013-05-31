class Api::V1::VictimCountsController < ApplicationController

  respond_to :json

  def index

    @victim_counts = VictimCount.all

    #raise @victim_counts.inspect
    respond_with @victim_counts, root: false


  end
end
