class ListLabels
  def list_labels
    puts 'There are no labels yet!' if @labels.empty?
    @labels.each do |label|
      puts "ID: #{label['id']}, Title: #{label['title']}, Color: #{label['color']}"
    end
  end
end
