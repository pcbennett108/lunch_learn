class AirQualityFacade
  attr_reader :country

  def initialize(country)
      @country = country 
  end

  def quality_at_location
    coordinates = get_coordinates
  end
  
  def get_coordinates
    response = CountryService.new.country_name(@country)
    require "pry" ; binding.pry
    if response[:status] = 404
      [0,0]
    end

    country_data = response.first
    if country_data[:capitalInfo].empty?
      [0,0]
    else
      country_data[:capitalInfo][:latlng]
    end
  end

end