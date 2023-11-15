class LearningResourceFacade
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def get_resources
    video_data = VideoService.new.history(@country)
    # call image service
    # pass both through poro with country
  end

end