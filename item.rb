class Item
  attr_accessor :title, :published_date, :item_owner

  def initialize(publish_date)
    @id = rand(1..100)
    @publish_date = publish_date
    @archived = false
  end
end
