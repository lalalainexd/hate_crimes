class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @bias_types = BiasType.all
  end
end
