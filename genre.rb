class Genre
  attr_accessor :name

  def initialize(name)
    @id = rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item: Item)
    @items << item
    item.genre = self
  end
end
