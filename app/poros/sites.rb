class Sites
  attr_reader :id, :name, :address, :place_id

  def initialize(site)
    @id = nil
    @name = site[:properties][:name]
    @address = site[:properties][:formatted]
    @place_id = site[:properties][:place_id]
  end
end