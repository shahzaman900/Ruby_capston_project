require 'json'
require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :id

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @id = Random.rand(1..1000)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @publish_date = publish_date
  end

  def can_be_archived?
    self.class.can_be_archived?(@publish_date) && (Date.today - Date.parse(@last_played_at)).to_i / 365 >= 2
  end

  def to_json(option = {})
    {
      id: @id,
      multiplayer: @multiplayer,
      last_played_at: @last_played_at,
      publish_date: @publish_date,
      archived: @archived,
      label: @label,
      author: @author,
      genre: @genre
    }.to_json(option)
  end
end
