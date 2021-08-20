describe "delete a bird", :type => :request do
  let!(:bird) { 
    FactoryBot.create(:bird, family_name: 'test_family_name', common_name: 'test_common_name', color: 'test_color', geography: 'test_geography', id: 1)
  }
  before { delete '/birds/1' }
    it 'returns success message' do
    expect(JSON.parse(response.body)['message']).to eq("This bird has been deleted successfully.")
  end
end