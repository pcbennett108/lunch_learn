require "rails_helper"

RSpec.describe AirQualityService do
  describe 'Instance methods' do
    let(:query) { [48.87, 2.33] }
    let(:service) { AirQualityService.new }

    it 'returns a successful response', :vcr do
      response = service.quality_at_location(query)
      #expect(response.status).to eq(200)
      expect(response).to be_a(Hash)
    end
  end
end