require 'json'

class SaveMusic
  def save_music_album(music_albums)
    music_json = music_albums.map do |music|
      { 'publish_date' => music.publish_date, 'on_spotify' => music.on_spotify}
    end
    File.write(music_album.json, JSON.pretty_generate(music_json));
  end

  def save_genre(genres)
    genres_json = genres.map do |genre|
      {'name' => genre.name}
    end
    File.write(genres.json, JSON.pretty_generate(genres_json))
  end
end