require 'rails_helper'

RSpec.describe AirQualityFacade, type: :facade do
  describe 'Instance methods' do
    let(:query) { "France" }
    let(:facade) { AirQualityFacade.new(query) }

    it 'returns and air quality object', :vcr do
      response = facade.quality_at_location

      expect(response).to be_a(Object)
      expect(response).to be_a(AirQuality)
    end
  end
end