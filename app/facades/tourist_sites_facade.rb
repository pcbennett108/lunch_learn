class TouristSitesFacade
  attr_reader :country

  def initialize(country)
      @country = country 
  end

  def coordinates
    country_data = CountryService.new.country_name(@country)
    latlang = country_data.first[:capitalInfo][:latlng]
    lat = latlang[0]
    lon = latlang[1]
    sites_in_radius(lon, lat)
  end

  def sites_in_radius(lon, lat)
    sites_data = PlacesService.new.sites_within_radius(lon, lat)
    sites_data[:features].map do |site|
      Sites.new(site)
    end
  end
end