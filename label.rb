class Label
  attr_accessor :title, :color
  attr_reader :items, :id

  def initialize(title, color, id = Random.rand(1..10_000))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.add_label(self)
  end
end
