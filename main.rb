require_relative 'item'
require 'date'
require_relative 'app'
require_relative 'list_music_albums'
require_relative 'music_album_app'

# items = []

class Main
  def initialize
    @app = App.new
  end

  def present_option
    puts '2 - List all music albums'
    puts '5 - List all genres'
    puts '10 - Add a music album'
    puts '13 - Exit App'
  end

  def choose_option(choice)
    options = {
      '2' => -> { ListMusicAlbums.new.list_music_album(@app.music_albums) },
      '5' => -> { ListMusicAlbums.new.list_genres(@app.genres) },
      '10' => -> { MusicAlbumApp.new.create_music_album(@app.music_albums, @app.genres) },
      '13' => -> { exit_app }
    }

    if options.key?(choice)
      options[choice].call
    else
      puts 'Invalid option'
    end
  end

  def exit_app
    @app.save_data
    exit
  end

  def run
    loop do
      present_option
      choice = gets.chomp
      choose_option(choice)
    end
  end
end

Main.new.run

# def present_options
#   puts 'Options:'
#   puts '1. Add an item to the library'
#   puts '2. List all items in the library'
#   puts '3. Archive items older than 10 years'
#   puts '4. Quit'
#   print 'Choose an option: '
# end

# def handle_add_item(items)
#   print 'Enter the published date of the item (YYYY-MM-DD): '
#   published_date = gets.chomp
#   item = Item.new(published_date)
#   items << item
#   puts 'Item added to the library.'
# end

# def handle_list_items(items)
#   puts 'Items in the library:'
#   items.each do |item|
#     puts "ID: #{item.id}"
#     puts "Published Date: #{item.published_date}"
#     puts "Archived: #{item.archived}"
#     puts '-' * 20
#   end
# end

# def handle_archive_items(items)
#   items.each do |item|
#     item.move_to_archive if item.can_be_archived?
#   end
#   puts 'Items older than 10 years have been archived.'
# end

# loop do
#   present_options
#   option = gets.chomp.to_i

#   case option
#   when 1
#     handle_add_item(items)
#   when 2
#     handle_list_items(items)
#   when 3
#     handle_archive_items(items)
#   when 4
#     puts 'Exiting the application...'
#     exit
#   else
#     puts 'Invalid option. Please try again.'
#   end

#   puts '-' * 40
# end
