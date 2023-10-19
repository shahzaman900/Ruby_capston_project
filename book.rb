require_relative 'item'

class Book < Item
  attr_accessor :title, :author, :genre, :cover_state

  def initialize(publish_date, title, author, genre, cover_state)
    super(publish_date)
    @title = title
    @author = author
    @genre = genre
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
