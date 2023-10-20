require 'json'

class SaveLabels
  def save_labels
    data = []
    @labels.each do |label|
      data.push({ id: label.id, title: label.title, color: label.color })
    end
    File.write('label.json', JSON.generate(data))
  end

  def save_books
    data = []
    @books.each do |book|
      data.push({ title: book.title, publisher: book.publisher, cover_state: book.cover_state,
                  publish_date: book.publish_date })
    end
    File.write('book.json', JSON.generate(data))
  end
end
