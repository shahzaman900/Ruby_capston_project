require_relative 'save_music_album'
require_relative 'load_music_album'
require_relative 'save_books'
require_relative 'book_module'
require_relative 'label_module'
require_relative 'game_module'
require_relative 'author_module'

class App
  include GameModule
  include AuthorModule
  attr_accessor :music_albums, :genres, :books, :games, :authors, :labels

  def initialize
    @music_albums = []
    @genres = []
    @books = []
    @labels = []
    @games = []
    @authors = []
    load_data
  end

  def add_game
    create_game
  end

  def list_authors
    list_present_authors
  end

  def list_all_games
    list_games
  end

  def save_data
    save_music = SaveMusic.new
    save_music.save_music_album(@music_albums)
    save_music.save_genre(@genres)

    save_books = SaveLabels.new
    save_books.save_labels(@labels)
    save_books.save_books(@books)
  end

  def load_data
    load_music = LoadMusicAlbum.new
    load_music.load_music_album(@music_albums)
    load_music.load_generes(@genres)

    load_books = BooksDataController.new
    @books = load_books.load_books

    new_label = LabelsDataController.new
    @labels = new_label.load_labels
  end
end
