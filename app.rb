require_relative 'save_music_album'
require_relative 'load_music_album'

class App
  attr_accessor :music_albums, :genres

  def initialize
    @music_albums = []
    @genres = []
    load_data
  end

  def save_data
    save_music = SaveMusic.new

    save_music.save_music_album(@music_albums)
    save_music.save_genre(@genres)
  end

  def load_data
    load_music = LoadMusicAlbum.new
    load_music.load_music_album(@music_albums)
    load_music.load_generes(@genres)
  end
end
