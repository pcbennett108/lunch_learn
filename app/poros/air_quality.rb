class AirQuality
  attr_reader :id, :aqi, :datetime, :readable_aqi

  def initialize(aq_data)
    @id = nil
    @aqi = aq_data[:list][0][:main][:aqi]
    @datetime = DateTime.now
    @readable_aqi = get_readable_aqi(@aqi)
  end

  def get_readable_aqi(aqi)
    if aqi == 1
      'Good'
    elsif aqi == 2
      'Fair'
    elsif aqi == 3
      'Moderate'
    elsif aqi == 4
      'Poor'
    else
      'Very Poor'
    end
  end
end