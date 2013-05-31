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

  end

end
