class AirQualityFacade
  attr_reader :country

  def initialize(country)
      @country = country 
  end

  def quality_at_location
    coordinates = get_coordinates
    aq_data = AirQualityService.new.quality_at_location(coordinates)
    require "pry" ; binding.pry
  end
  
  def get_coordinates
    response = CountryService.new.country_name(@country)
    if response.first[:capitalInfo].empty?
      [0,0]
    else
      response.first[:capitalInfo][:latlng]
    end
  end
end