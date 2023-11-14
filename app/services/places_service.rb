class PlacesService

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.geoapify.com') do |faraday|
      faraday.params['apiKey'] = Rails.application.credentials.geoapify[:key]
      faraday.params['limit'] = 10
    end
  end

  def sites_within_radius(coordinates)
    get_url("/v2/places?categories=tourism.sights&filter=circle:#{coordinates[1]},#{coordinates[0]},5000")
    
  end
end