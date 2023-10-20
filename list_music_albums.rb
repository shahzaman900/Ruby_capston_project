class ListMusicAlbums
  def list_music_album(music_albums)
    puts 'Music Albums: '
    music_albums.each do |album|
      puts "Publish date: #{album.publish_date}, on_spotify: #{album.on_spotify}"
    end
  end

  def list_genres(genres)
    puts 'Genres: '
    genres.each do |genre|
      puts "Genre name: #{genre.name}"
    end
  end
end
