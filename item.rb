require 'date'

class Item
  attr_accessor :id, :genre, :author, :source, :label, :published_date, :archived

  def initialize(publish_date)
    @id = rand(1..100)
    @publish_date = publish_date
    @archived = false
  end

  # def genre=(genre)
  #   genre.items << self unless genre.items.include?(self)
  #   @genre = genre
  # end

  # def author=(author)
  #   author.items << self unless author.items.include?(self)
  #   @author = author
  # end

  # def source=(source)
  #   source.items << self unless source.items.include?(self)
  #   @source = source
  # end

  # def label=(label)
  #   label.items << self unless label.items.include?(self)
  #   @label = label
  # end

  def can_be_archived?
    Date.today.year - Date.parse(@publish_date).year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
