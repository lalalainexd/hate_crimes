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

end
