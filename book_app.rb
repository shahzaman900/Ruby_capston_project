require_relative 'book'
require_relative 'label_module'

class BookApp
  def add_book(books)
    print 'Please, type the book title: '
    title = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    books.push(Book.new(title, publisher, cover_state, publish_date))
    puts 'Book created successfully'
  end
end
