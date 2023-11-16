class LearningResourceFacade
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def get_resources
    video_data = video
    image_data = images
    Resources.new(video_data, image_data, @country)
  end
  
  def video
    responce = VideoService.new.history(@country)
    if responce[:items].empty?
      return {}
    else
      Video.new(responce)
    end
  end

  def images
    responce = ImageService.new.search(@country)
    if responce[:results].empty?
      return []
    else
      responce[:results].map do |image_data|
        Images.new(image_data)
      end
    end
  end
end