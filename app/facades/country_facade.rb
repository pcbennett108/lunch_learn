class CountryFacade
  def self.sample_country
    data = CountryService.new.sample_country
    data.map do |country_data|
      Country.new(country_data)
    end
  end
end