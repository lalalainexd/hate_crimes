class BiasesController < ApplicationController

  def show
    @bias = Bias.find(params[:id])
  end
end
