class ListLabels
  def list_labels(labels)
    puts 'There are no labels yet!' if labels.empty?
    labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end
end
