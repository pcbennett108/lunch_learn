class Video
  attr_reader :title, :youtube_video_id
  def initialize(responce)
    data = responce[:items][0]
    @title = data[:snippet][:title]
    @youtube_video_id = data[:id][:videoId]
  end
end