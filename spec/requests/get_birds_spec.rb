require 'rails_helper'

describe "get all birds route", :type => :request do
  let!(:bird) { FactoryBot.create_list(:bird, 3)}

  before { get '/birds'}

  it 'returns all birds' do
    expect(JSON.parse(response.body).size).to eq(3)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get bird id:1", :type => :request do
  let!(:bird) { 
    FactoryBot.create(:bird, family_name: 'test_family_name', common_name: 'test_common_name', color: 'test_color', geography: 'test_geography', id: 1)
  }
  before { get '/birds/1' }
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
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end


describe "returns first 10 birds", :type => :request do
  let!(:bird) { FactoryBot.create_list(:bird, 20)}

  before { get '/birds?page=1'}

  it 'returns 10 birds' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get bird id:2", :type => :request do
  let!(:bird) { 
    FactoryBot.create(:bird, family_name: 'test_family_name', common_name: 'test_common_name', color: 'test_color', geography: 'test_geography', id: 1)
  }
  before { get '/birds/2' }
  it 'returns status code 404' do
    expect(response).to have_http_status(:not_found)
  end
end

