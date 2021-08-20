describe "delete a park", :type => :request do
  let!(:park) { 
    FactoryBot.create(:park, area: 'test_area', description: 'test_description', state: 'test_state', name: 'test_name', id: 1)
  }
  before { delete '/parks/1' }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("This park has been deleted successfully.")
  end
end