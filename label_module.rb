require_relative 'label'
require 'json'
require 'date'

class LabelsDataController
  def load_labels
    file = 'label.json'
    data = []
    if File.exist?(file) && !File.empty?(file)
      JSON.parse(File.read(file)).each do |element|
        data.push(Label.new(id: element['id'].to_i, title: element['title'], color: element['color']))
      end
    end
    data
  end
end
