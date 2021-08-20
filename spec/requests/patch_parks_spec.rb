require 'rails_helper'

describe "update a park route", :type => :request do
  let!(:parks) { 
      FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { put '/parks/1', params: {area: 'patched_test_area'} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been updated successfully.")
  end
end

describe "update a park route without a area", :type => :request do
  let!(:parks) { 
      FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { put '/parks/1', params: {area: ''} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Area can't be blank")
  end
end


