class CountryService
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://restcountries.com') do |faraday|
      faraday.params['fields'] = 'name'
    end
  end

  def sample_country
    get_url("/v3.1/all")
    
  end
end