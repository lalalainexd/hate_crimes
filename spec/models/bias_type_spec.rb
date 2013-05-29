require 'spec_helper'

describe BiasType do

  describe 'total_incidents' do
    it 'returns the total number of incidents motivated by the bias type' do

      bias_type = BiasType.create!(name: "Type")
      bias_type.biases.create(name: "Bias1", total_incidents: 1)
      bias_type.biases.create(name: "Bias2", total_incidents: 3)
      bias_type.biases.create(name: "Bias3", total_incidents: 1)

      expect(bias_type.total_incidents).to eq 5

    end
  end

  describe 'percentage' do

    it 'returns the percentage of hate crimes that fit this category' do

      bias_type = BiasType.create!(name: "Type")
      bias_type.biases.create(name: "Bias1", total_incidents: 1)
      bias_type.biases.create(name: "Bias2", total_incidents: 3)
      bias_type.biases.create(name: "Bias3", total_incidents: 1)

      Bias.create(name: "Bias4", total_incidents: 4)
      Bias.create(name: "Bias5", total_incidents: 1)

      expect(bias_type.percentage_incidents).to eq(50.0)

    end
  end

end
