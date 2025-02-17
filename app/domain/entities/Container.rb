class Container
  attr_accessor :id, :name, :status, :image

  def initialize(id, name, status, image)
    @id = id
    @name = name
    @status = status
    @image = image
  end
end
