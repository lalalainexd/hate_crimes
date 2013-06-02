class Api::V1::BiasCategoriesController < ApplicationController

  respond_to :json

  def index

    @bias_categories = BiasCategory.all
    respond_with @bias_categories, root: false

  end
end
