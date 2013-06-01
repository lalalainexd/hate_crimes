class Api::V1::BiasesController < ApplicationController
  respond_to :json

  def index
    @biases = Bias.all
    respond_with(@biases, root: false)
  end
end
