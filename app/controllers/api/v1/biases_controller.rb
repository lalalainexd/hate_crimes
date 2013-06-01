class BiasesController < ApplicationController
  def index
    @biases = Bias.all
  end
end
