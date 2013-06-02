class Api::V1::BiasesController < ApplicationController
  respond_to :json

  def index

    if params[:category]
      @biases = Bias.filter_by(params[:category])
    else
      @biases = Bias.all
    end
    respond_with(@biases, root: false)
  end
end
