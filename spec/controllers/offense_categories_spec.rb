require 'spec_helper'

describe Api::V1::OffenseCategoriesController do

  describe "#index" do
    it "returns all offense categories" do
      create(:poked_offense)
      create(:arson_offense)
      create(:offense_category)

      get :index, format: :json

      result = JSON.parse(response.body)
      expect(result.count).to eq 3
      expect(result.first["name"]).to eq "person"
      expect(result.first["created_at"]).to be_nil
      expect(result.first["offenses"].first["name"]).to eq("poked")
    end
  end
end
