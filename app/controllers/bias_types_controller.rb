class BiasTypesController < ApplicationController

  def show
    @bias_type = BiasType.find(params[:id])

  end

end
