class Resources
  attr_reader :id, :country, :video, :images

  def initialize(video_data, image_data, country)
    @id = nil
    @country = country
    @video = video_data
    @images = image_data
  end
end