require_relative 'item'
require 'date'
require_relative 'app'
require_relative 'list_music_albums'
require_relative 'music_album_app'
require_relative 'list_books'
require_relative 'list_labels'
require_relative 'book_app'
require_relative 'book'
require_relative 'game'
require_relative 'game_module'

# items = []

class Main
  def initialize
    @app = App.new
  end

  def present_option
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - Exit App'
  end

  def choose_option(choice)
    options = {
      '1' => -> { ListBooks.new.list_books(@app.books) },
      '2' => -> { ListMusicAlbums.new.list_music_album(@app.music_albums) },
      '3' => -> { @app.list_all_games },
      '4' => -> { ListMusicAlbums.new.list_genres(@app.genres) },
      '5' => -> { ListLabels.new.list_labels(@app.labels) },
      '6' => -> { @app.list_authors },
      '7' => -> { BookApp.new.add_book(@app.books, @app.labels) },
      '8' => -> { MusicAlbumApp.new.create_music_album(@app.music_albums, @app.genres) },
      '9' => -> { @app.add_game },
      '10' => -> { exit_app }
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
