require './add_methods'
require './list_methods'

def menu
  puts "\n" * 2
  puts 'Welcome to the Catalog of Things App!!'
  puts "\n"
  puts 'Please, enter a number from the following list to continue:'
  puts "\n"
  puts '1) List items'
  puts '2) Add items'
  puts '3) Exit from app'
  puts "\n"
  run_options
end

def run_options
  opc = gets.chomp
  case opc
  when '1'
    list_items_options
  when '2'
    add_items_options
  when '3'
    exit_from_app
  else
    puts 'Please, type a number from the options list above'
    sleep(1)
    exit_from_app
  end
end

def list_items_options
  puts "\n"
  puts 'Please, enter a number from the following list to continue:'
  puts "\n"
  puts '1) List all books'
  puts '2) List all music albums'
  puts '3) List all games'
  puts '4) List all genres'
  puts '5) List all labels'
  puts '6) List all authors'
  puts '7) Back to main menu'
  puts "\n"
  run_list_items_options
end

def run_list_items_options
  opc = gets.chomp
  case opc
  when '1'
    list_all_books
  when '2'
    list_all_music_albums
  when '3'
    list_all_games
  when '4'
    list_all_genres
  when '5'
    list_all_labels
  when '6'
    list_all_authors
  else
    menu
  end
end

def add_items_options
  puts "\n"
  puts 'Please, enter a number from the following list to continue:'
  puts "\n"
  puts '1) Add books'
  puts '2) Add music albums'
  puts '3) Add games'
  puts '4) Back to main menu'
  puts "\n"
  run_add_items_options
end

def run_add_items_options
  opc = gets.chomp
  case opc
  when '1'
    add_a_book_menu
  when '2'
    add_a_music_album_menu
  when '3'
    add_a_game_menu
  when '4'
    menu
  else
    puts 'Please, type a number from the options list above'
    sleep(1)
    exit_from_app
  end
end

def exit_from_app
  puts 'Thank you for using the Catalog of Things App.'
  puts "\n" * 2
  sleep(2)
  exit!
end
