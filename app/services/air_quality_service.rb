class AirQualityService

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://api.openweathermap.org') do |faraday|
      faraday.params['appid'] = Rails.application.credentials.openweather[:key]
    end
  end

  def quality_at_location(coordinates)
    get_url("/data/2.5/air_pollution?lat=#{coordinates[0]}&lon=#{coordinates[1]}")
  end
end