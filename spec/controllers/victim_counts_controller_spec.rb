require 'spec_helper'

describe Api::V1::VictimCountsController do

  describe "#index" do

    it "works" do
      3.times{create(:victim_count)}

      get :index, format: "json"


      parsed_body = JSON.parse(response.body)
      expect(parsed_body.count).to eq(3)

      first_victim_count = parsed_body.first
      first_victim_count["total"].should eq(1)
      first_victim_count["bias"]["name"].should eq("anti turtles")
      first_victim_count["offense"]["name"].should eq("poked with a stick")
    end

    context "filters by bias" do

      before do
        3.times{create(:victim_count)}
        create(:victim_with_cat_bias)
      end

      it "filters by 1 bias" do

        get :index, bias: ["nyan"], format: "json"
        parsed_body = JSON.parse(response.body)

        expect(parsed_body.count).to eq(1)
      end

      it "filters by 2 biases" do
        get :index, bias: ["nyan","anti turtles"], format: "json"
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.count).to eq(4)
      end

      it "bias doesnt exist" do
        get :index, bias: ["nyan","chimp"], format: "json"
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.count).to eq(1)
      end

    end

  end

end
