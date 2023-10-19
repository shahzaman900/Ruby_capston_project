require 'book'
require 'json'
require 'date'

module StoreData
  def list_books
    @books.each do |book|
      puts "Title: #{book.title}"
      puts "Author: #{book.author}"
      puts "Genre: #{book.genre}"
      puts "Cover state: #{book.cover_state}"
      puts "Published date: #{book.published_date}"
      puts "Archived: #{book.archived}"
      puts '-' * 20
    end
  end

  def list_labels
    @labels.each do |label|
      puts label
    end
  end

  private

  def load_books
    json_data = File.read('book.json')
    book_data = JSON.parse(json_data, symbolize_names: true)
    book_data.map do |book|
      Book.new(book[:title], book[:author], book[:cover_state], book[:published_date])
    end
  rescue Errno::ENOENT
    []
  end

  def save_books
    json_data = @books.map do |book|
      {
        title: book.title,
        author: book.author,
        cover_state: book.cover_state,
        published_date: book.published_date
      }
    end.to_json

    File.write('book.json', json_data)
  end

  def load_labels
    json_data = File.read('labels.json')
    JSON.parse(json_data)
  rescue Errno::ENOENT
    []
  end
end
