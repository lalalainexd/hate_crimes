class Api::V1::OffenseCategoriesController < ApplicationController

  respond_to :json

  def index

    @offense_categories = OffenseCategory.all
    respond_with @offense_categories, root: false

  end
end
