class LearningResourceFacade
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def get_resources
    video_data = video
    image_data = images
    require "pry" ; binding.pry
    # pass both through poro with country
  end

  def video
    VideoService.new.history(@country)
  end

  def images
    ImageService.new.search(@country)
  end
end