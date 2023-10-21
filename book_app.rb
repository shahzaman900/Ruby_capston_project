require_relative 'book'
require_relative 'label_module'

class BookApp
  def add_book(books, labels)
    print 'Please, type the book name: '
    name = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp

    print 'Please, type the label title: '
    title = gets.chomp

    print 'Please, type the label color: '
    color = gets.chomp
    return unless publish_date

    books.push(Book.new(title, publisher, cover_state, publish_date))
    puts 'Book created successfully'

    labels.push(Label.new(title, color))
    puts 'Label created successfully'
  end
end
