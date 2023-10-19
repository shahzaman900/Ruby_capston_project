class ListMusicAlbums
  def list_music_album(music_albums)
    music_albums.each do |album|
      puts "Publish date: #{album.publish_date}"
    end
  end
end