require 'rails_helper'

describe "update a park route", :type => :request do
  let!(:park) { 
      FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { put '/parks/1', params: {area: 'patched_test_area'} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been updated successfully.")
  end
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "update a park route without an area", :type => :request do
  let!(:parks) { 
      FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { put '/parks/1', params: {area: ''} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Area can't be blank")
  end
  it 'returns status code 422' do
    expect(response).to have_http_status(422)
  end
end


