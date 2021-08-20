require 'rails_helper'

describe "post a bird route", :type => :request do

  before do
    post '/birds', params: { :family_name => 'test_family_name', :common_name => 'test_common_name', :color => 'test_color', :geography => 'test_geography' }
  end

  it 'returns the family_name of the bird' do
    expect(JSON.parse(response.body)['family_name']).to eq('test_family_name')
  end

  it 'returns the bird common_name' do
    expect(JSON.parse(response.body)['common_name']).to eq('test_common_name')
  end

  it 'returns the color' do
    expect(JSON.parse(response.body)['color']).to eq('test_color')
  end

  it 'returns the bird geography' do
    expect(JSON.parse(response.body)['geography']).to eq('test_geography')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "post a bird route without a color entry", :type => :request do

  before do
    post '/birds', params: { :family_name => 'test_family_name', :common_name => 'test_common_name', :color => '', :geography => 'test_geography' }
  end

  it 'returns a error message status' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Color can't be blank")
  end
  it 'returns status code 422' do
    expect(response).to have_http_status(422)
  end
end