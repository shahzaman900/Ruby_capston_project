require 'json'
require_relative 'book'
require_relative 'label'

class LoadBookLabel
  def load_books
    file = 'book.json'
    data = []
    if File.exist?(file) && !File.empty?(file)
      JSON.parse(File.read(file)).each do |element|
        data.push(Book.new(element['name'], element['publisher'], element['cover_state'], element['publish_date']))
      end
    end
    data
  end
end
