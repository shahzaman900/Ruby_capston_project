class Label
    attr_accessor :name, :color
    attr_reader :id, :items
  
    def initialize(id, title, color)
      @id = id || Random.rand(1..1000)  
      @name = name
      @color = color
      @items = []
    end
  
    def add_item(item)
      @items << item
      item.label = self
    end
  end