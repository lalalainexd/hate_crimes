require 'spec_helper'

describe Api::V1::OffensesController do

  describe "#index" do

    before do
      create(:poked_offense)
      create(:dropped_offense)
      create(:arson_offense)
      create(:offense)

    end

    it "works" do

      get :index, format: :json

      result = JSON.parse(response.body)

      expect(result.count).to eq 4

    end

    context "filter" do
      it "filters by 1 offense category" do
        get :index, format: :json, category:["person"]
        result = JSON.parse(response.body)

        expect(result.count).to eq 2
      end

      it "filters by 2 bias categories" do

        get :index, format: :json, category: ["person", "property"]
        result = JSON.parse(response.body)

        expect(result.count).to eq 3
      end

    end
  end

end
