require 'rails_helper'

RSpec.describe 'CountryPoro' do
  it 'creates a country poro based on attributes' do
    attr = {
          name: 
            { 
              common: "Nigeria",
              official: "Federal Republic of Nigeria"
            }
          }

    country = Country.new(attr)

    expect(country).to be_a(Country)
    expect(country.name).to eq("Nigeria")
  end
end