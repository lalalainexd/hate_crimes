require 'spec_helper'

describe Api::V1::BiasesController do

  describe "#index" do

    before do
      create(:turtle_bias)
      create(:cat_bias)
      create(:fish_bias)
      create(:bias)

    end

    it "works" do

      get :index, format: :json

      result = JSON.parse(response.body)

      expect(result.count).to eq 4

    end

    context "filter" do
      it "filters by 1 bias category" do
        get :index, format: :json, category:["land"]
        result = JSON.parse(response.body)

        expect(result.count).to eq 2
      end

      it "filters by 2 bias categories" do

        get :index, format: :json, category: ["land", "water"]
        result = JSON.parse(response.body)

        expect(result.count).to eq 3
      end

    end
  end

end
