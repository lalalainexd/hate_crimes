class BiasesController < ApplicationController
  def index
    @biases = Bias.all_general_types
  end

  def show
    @bias = Bias.find(params[:id])
  end
end
