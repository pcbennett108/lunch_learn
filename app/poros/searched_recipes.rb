class SearchedRecipes
  attr_reader :id, :name, :img_src
  def initialize(data)
    @id = nil
    @title = data[:recipe][:label]
    @url = data[:recipe][:url]
    @image = data[:recipe][:image]

  end
end