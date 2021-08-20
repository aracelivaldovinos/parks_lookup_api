require 'rails_helper'

describe "get all birds route", :type => :request do
  let!(:birds) { FactoryBot.create_list(:bird, 3)}

  before { get '/birds'}

  it 'returns all birds' do
    expect(JSON.parse(response.body).size).to eq(3)
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