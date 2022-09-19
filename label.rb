class Genre
  attr_accessor :title, :color
  attr_reader :id

  def initialize(id, title, color)
    @id = id || Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
  end
end
