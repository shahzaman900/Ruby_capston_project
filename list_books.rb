class ListBooks
  def list_books(books)
    puts 'There are no books yet! Please add books.' if books.empty?
    books.each do |book|
      puts "Name: #{book.name}, Publisher: #{book.publisher}, Publish Date: #{book.publish_date}, cover_state: #{book.cover_state}"
    end
  end
end
