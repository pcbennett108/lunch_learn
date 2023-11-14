require 'rails_helper'

RSpec.describe CountryFacade, type: :facade do
  describe 'Instance methods' do
    let(:facade) { CountryFacade }

    it 'can create an array of country objects', :vcr do
      response = facade.sample_country

      expect(response).to be_a(Array)
      expect(response[0]).to be_a(Country)
    end
  end
end