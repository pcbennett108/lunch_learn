class LearningResourceFacade
  attr_reader :country

  def initialize(country)
    @country = country
  end

  def get_resources
    video_data = self.video
    # call image service
    # pass both through poro with country
  end

  def video
    VideoService.new.history(@country)
  end
end