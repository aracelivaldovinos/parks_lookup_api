require 'rails_helper'

describe "update a park route", :type => :request do

  before do
    post '/parks', params: { :area => 'test_area', :description => 'test_description', :state => 'test_state', :name => 'test_name', :id => 1 }
    get '/parks/1'
    put '/parks/1', params: { :area => 'test1_area', :description => 'test_description', :state => 'test_state', :name => 'test_name'}
  end
   
  it 'returns updated message' do
    expect(JSON.parse(response.body)).to eq("message" =>  "This park has been updated successfully.")
  end
end
