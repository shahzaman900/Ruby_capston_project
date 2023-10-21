class ListBooks
  def list_books(books)
    puts 'There are no books yet! Please add books.' if books.empty?
    books.each do |book|
      print "Name: #{book.name}, "
      print "Publisher: #{book.publisher}, "
      print "Publish Date: #{book.publish_date}, "
      print "cover_state: #{book.cover_state}\n"
    end
  end
end
