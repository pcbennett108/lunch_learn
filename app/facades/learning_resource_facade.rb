class LearningResourceFacade
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def get_resources
    video_data = video
    image_data = images
    require "pry" ; binding.pry
  end
  
  def video
    responce = VideoService.new.history(@country)
    Video.new(responce)
  end

  def images
    responce = ImageService.new.search(@country)
    responce[:results].map do |image_data|
      Images.new(image_data)
    end
  end
end