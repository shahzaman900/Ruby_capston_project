require 'json'
require_relative 'music_album'
require_relative 'genre'

class LoadMusicAlbum
  def load_music_album(music_albums)
    return unless File.exist?(music_album.json)

    music_album_json = File.read(JSON.parse(music_album.json))

    music_albums =  music_album_json.map do |album|
      publish_date = album['publish_date']
      on_spotify = album['on_spotify']
      MusicAlbum.new(publish_date, on_spotify)
    end
  end

  def load_generes(genres)
    return unless File.exist?(generes.json)

    generes_json = File.read(JSON.parse(generes.json))

    generes = generes_json.map do |genre|
      name = genre.name
      Genre.new(name)
    end
  end
end