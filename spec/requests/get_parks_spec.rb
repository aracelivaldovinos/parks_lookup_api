require 'rails_helper'

describe "get all parks route", :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 3)}

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(3)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get park id:1", :type => :request do
  let!(:park) { 
    FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { get '/parks/1' }
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
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "returns first 10 parks", :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20)}

  before { get '/parks?page=1'}

  it 'returns 10 parks' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get park id:2", :type => :request do
  let!(:park) { 
    FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { get '/parks/2' }
  it 'returns status code 404' do
    expect(response).to have_http_status(:not_found)
  end
end