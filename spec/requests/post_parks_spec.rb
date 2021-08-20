require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { :area => 'test_area', :description => 'test_description', :state => 'test_state', :name => 'test_name' }
  end

  it 'returns the area of the park' do
    expect(JSON.parse(response.body)['area']).to eq('test_area')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['description']).to eq('test_description')
  end

  it 'returns the state' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "post a park route without presence of state", :type => :request do

  before do
    post '/parks', params: { :area => 'test_area', :description => 'test_description', :state => '', :name => 'test_name' }
  end

  it 'returns a error message status' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: State can't be blank")
  end
end