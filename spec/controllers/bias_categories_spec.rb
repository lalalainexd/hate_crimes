require 'spec_helper'

describe Api::V1::BiasCategoriesController do

  describe "#index" do
    it "returns all bias categories" do
      create(:turtle_bias)
      create(:water_bias_category)
      create(:bias_category)

      get :index, format: :json
      result = JSON.parse(response.body)
      expect(result.count).to eq 3
      expect(result.first["name"]).to eq "land"
      expect(result.first["created_at"]).to be_nil
      expect(result.first["biases"].first["name"]).to eq("turtles")
    end
  end
end
