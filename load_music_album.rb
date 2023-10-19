require 'json'
require_relative 'music_album'
require_relative 'genre'

class LoadMusicAlbum
  def load_music_album(music_albums)
    return unless File.exist?('music_album.json')

    music_album_json = JSON.parse(File.read('music_album.json'))

    music_album_json.each do |album|
      publish_date = album['publish_date']
      on_spotify = album['on_spotify']
      music_albums << MusicAlbum.new(publish_date, on_spotify)
    end
  end

  def load_generes(genres)
    return unless File.exist?('genres.json')

    genres_json = JSON.parse(File.read('genres.json'))

    genres_json.each do |genre|
      name = genre['name']
      genres << Genre.new(name)
    end
  end
end