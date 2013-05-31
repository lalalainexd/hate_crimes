require 'spec_helper'

describe Bias do

  describe ".all_general_types" do

    it "returns all biases that don't have a BiasType" do
      bias1 = Bias.new(name: "bias1")
      bias1.sub_types.build(name: "bias1a")
      bias1.sub_types.build(name: "bias1b")
      bias1.save!

      bias2 = Bias.new(name: "bias2")
      bias2.sub_types.build(name: "bias2a")
      bias2.sub_types.build(name: "bias2b")
      bias2.save!

      expect(Bias.all_general_types).to match_array([bias1, bias2])
    end
  end

  describe "#total_victims" do

    context "with sub types" do
      it "returns the total number of victims" do
        bias1 = Bias.create!(name: "bias1")
        bias1a = bias1.sub_types.create(name: "bias1a")
        bias1b = bias1.sub_types.create(name: "bias1b")

        VictimCount.create(total: 5, bias_id: bias1a.id)
        VictimCount.create(total: 2, bias_id: bias1a.id)
        VictimCount.create(total: 2, bias_id: bias1b.id)

        bias2 = Bias.create(name: "bias2")
        VictimCount.create(total: 1, bias_id: bias2.id)

        expect(bias1.total_victims).to eq 9
      end
    end

    context "without sub types" do
      it "returns the total number of victims" do
        bias = Bias.create(name: "bias")

        VictimCount.create(total: 5, bias_id: bias.id)
        VictimCount.create(total: 2, bias_id: bias.id)

        expect(bias.total_victims).to eq 7
      end
    end
  end
end
