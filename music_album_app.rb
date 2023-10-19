require_relative 'music_album'
require_relative 'genre'

class MusicAlbumApp
  def create_music_album(music_albums, genres)
    print 'Genre name: '
    genre_name = gets.chomp
    print 'Publish date(YYYY-MM-DD): '
    date = gets.chomp
    print 'On spotify(y/n)?: '
    on_spotify = gets.chomp.downcase
    on_spotify = on_spotify == 'y' ? true : false
    new_album = MusicAlbum.new(date, on_spotify)
    new_genre = Genre.new(genre_name)
    music_albums << new_album
    genres << new_genre unless genres.include?(new_genre)
  end
end