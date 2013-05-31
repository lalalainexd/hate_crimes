require 'spec_helper'

describe Offense do

  describe ".all_general_types" do
    it "returns all offenses that don't have offense types" do
      offense1 = Offense.create!(name: "offense1")
      offense1a = offense1.sub_types.create(name: "offense1a")
      offense1b = offense1.sub_types.create(name: "offense1b")

      offense2 = Offense.create(name: "offense2")

      expect(Offense.all_general_types).to match_array([offense1, offense2])
    end
  end

  describe "#total_victims" do

    context "with sub types" do
      xit "returns the total number of victims" do
        offense1 = Offense.create!(name: "offense1")
        offense1a = offense1.sub_types.create(name: "offense1a")
        offense1b = offense1.sub_types.create(name: "offense1b")

        VictimCount.create(total: 5, offense_id: offense1a.id)
        VictimCount.create(total: 2, offense_id: offense1a.id)
        VictimCount.create(total: 2, offense_id: offense1b.id)

        offense2 = Offense.create(name: "offense2")
        VictimCount.create(total: 1, offense_id: offense2.id)

        expect(offense1.total_victims).to eq 9
      end
    end

    context "without sub types" do
      xit "returns the total number of victims" do
        offense1 = Offense.create!(name: "offense1")

        VictimCount.create(total: 5, offense_id: offense1.id)
        VictimCount.create(total: 2, offense_id: offense1.id)

        offense2 = Offense.create(name: "offense2")
        VictimCount.create(total: 1, offense_id: offense2.id)

        expect(offense1.total_victims).to eq 7
      end
    end
  end

end
