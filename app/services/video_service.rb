class VideoService

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://youtube.googleapis.com') do |faraday|
      faraday.params['part'] = 'snippet'
      faraday.params['key'] = Rails.application.credentials.youtube[:key]
    end
  end

  def history(country)
    get_url("/youtube/v3/search?q=#{country}") do |f|
    f.params['channelId'] = 'UCluQ5yInbeAkkeCndNnUhpw'
    f.params['maxResults'] = '5'
    end
    
  end
end