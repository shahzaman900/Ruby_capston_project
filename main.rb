require_relative 'item'
require 'date'
require_relative 'app'
require_relative 'list_music_albums'
require_relative 'music_album_app'

# items = []

class Main
  def initialize
    @app = App.new
  end

  def present_option
    puts '2 - List all music albums'
    puts '5 - List all genres'
    puts '10 - Add a music album'
    puts '13 - Exit App'
  end

  def choose_option(choice)
    options = {
      '2' => -> { ListMusicAlbums.new.list_music_album(@app.music_albums) },
      '5' => -> { ListMusicAlbums.new.list_genres(@app.genres) },
      '10' => -> { MusicAlbumApp.new.create_music_album(@app.music_albums, @app.genres) },
      '13' => -> { exit_app }
    }

    if options.key?(choice)
      options[choice].call
    else
      puts 'Invalid option'
    end
  end

  def exit_app
    @app.save_data
    exit
  end

  def run
    loop do
      present_option
      choice = gets.chomp
      choose_option(choice)
    end
  end
end

Main.new.run

