class TouristSitesFacade
  attr_reader :country

  def initialize(country)
      @country = country 
  end

  def sites_in_radius
    coordinates = get_coordinates
    sites_data = PlacesService.new.sites_within_radius(coordinates)
    if sites_data[:features].empty?
      return nil
    else
      sites_data[:features].map do |site|
        Sites.new(site)
      end
    end
  end

  def get_coordinates
    response = CountryService.new.country_name(@country)
    if response[:status] = 404
      return [0,0]
    end

    country_data = response.first
    if country_data[:capitalInfo].empty?
      [0,0]
    else
      country_data[:capitalInfo][:latlng]
    end
  end
end