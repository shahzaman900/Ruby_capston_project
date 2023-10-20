require_relative 'save_music_album'
require_relative 'load_music_album'
require_relative 'save_books'
require_relative 'book_module'
require_relative 'label_module'

class App
  attr_accessor :music_albums, :genres, :books

  def initialize
    @music_albums = []
    @genres = []
    @books = []
    @labels = []
    load_data
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

    load_labels = LabelsDataController.new
    @labels = load_labels.load_labels
  end
end
