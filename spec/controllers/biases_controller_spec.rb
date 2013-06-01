require 'spec_helper'

describe Api::V1::BiasesController do

  it "works" do

    create(:turtle_bias)
    create(:cat_bias)
    create(:goat_bias)

    get :index, format: :json

    result = JSON.parse(response.body)

    expect(result.count).to eq 3

  end

end
