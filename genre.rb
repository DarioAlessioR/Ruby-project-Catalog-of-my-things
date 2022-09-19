class Genre
  attr_accessor :name, :items 
  attr_reader :id

  def initialize(id, name)
    @id = id || Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
  end
end
