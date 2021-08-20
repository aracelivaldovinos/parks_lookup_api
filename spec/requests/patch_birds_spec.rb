require 'rails_helper'

describe "update a bird route", :type => :request do
  let!(:birds) { 
      FactoryBot.create(:bird, family_name: 'test_family_name', common_name: 'test_common_name', color: 'test_color', geography: 'test_geography', id: 1)
  }
  before { put '/birds/1', params: {family_name: 'patched_test_family_name'} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("This bird has been updated successfully.")
  end
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "update a bird route without an family_name", :type => :request do
  let!(:birds) { 
      FactoryBot.create(:bird, family_name: 'test_family_name', common_name: 'test_common_name', color: 'test_color', geography: 'test_geography', id: 1)
  }
  before { put '/birds/1', params: {family_name: ''} }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Family name can't be blank")
  end
  it 'returns status code 422' do
    expect(response).to have_http_status(422)
  end
end