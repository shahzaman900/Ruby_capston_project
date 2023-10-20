require 'json'

class SaveLabels
  def save_labels(labels)
    data = []
    labels.each do |label|
      data.push({ id: label.id, title: label.title, color: label.color })
    end
    File.write('label.json', JSON.generate(data))
  end

  def save_books(books)
    data = []
    books.each do |book|
      data.push({ name: book.name, publisher: book.publisher, cover_state: book.cover_state,
                  publish_date: book.publish_date })
    end
    File.write('book.json', JSON.generate(data))
  end
end
