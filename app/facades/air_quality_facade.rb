class AirQualityFacade
  attr_reader :country

  def initialize(country)
      @country = country 
  end

  def quality_at_location
    coordinates = get_coordinates
    if coordinates == "Not Found"
      nil
    else
      aq_data = AirQualityService.new.quality_at_location(coordinates)
      AirQuality.new(aq_data)
    end
  end
  
  def get_coordinates
    response = CountryService.new.country_name(@country)
    if response.first[:capitalInfo].empty?
      "Not Found"
    else
      response.first[:capitalInfo][:latlng]
    end
  end
end