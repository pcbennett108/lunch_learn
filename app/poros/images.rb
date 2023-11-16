class Images
  attr_reader :alt_tag, :url
  def initialize(image_data)
    @alt_tag = image_data[:alt_description]
    @url = image_data[:urls][:regular]
  end
end