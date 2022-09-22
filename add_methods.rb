def add_a_book_menu
  puts "\n"
  puts 'Please, enter book title:'
  title = gets.chomp
  puts "Please, enter book author's first name:"
  author_first_name = gets.chomp
  puts "Please, enter book author's last name:"
  author_last_name = gets.chomp
  puts 'Please, enter date published (YYYY-MM-DD):'
  publish_date = gets.chomp
  puts 'Please, enter book publisher:'
  publisher = gets.chomp
  puts 'Please, enter cover state (new, fair, bad):'
  cover_state = gets.chomp
  puts 'Please, enter book label color:'
  label_color = gets.chomp
  puts 'Please, enter book genre:'
  genre = gets.chomp
  add_a_book(title, author_first_name, author_last_name, publish_date, publisher, cover_state, label_color, genre)
end

def add_a_book(title, author_first_name, author_last_name, publish_date, publisher, cover_state, label_color, genre)
  book = Book.new(publish_date, publisher, cover_state, title, author_first_name, author_last_name)
  label = Label.new(title, label_color)
  author = Author.new(author_first_name, author_last_name)
  genre = Genre.new(genre)
  add_elements(book, label, author, genre)
  store_elements(label, author, genre)
  @books.push(book)
  puts 'You have created a book!'
  sleep(1)
  menu
end

def add_a_music_album_menu
  puts "\n"
  puts 'Please, enter album title:'
  title = gets.chomp
  puts "Please, enter album author's first name:"
  author_first_name = gets.chomp
  puts "Please, enter album author's last name:"
  author_last_name = gets.chomp
  puts 'Please, enter date published (YYYY-MM-DD):'
  publish_date = gets.chomp
  puts "Please, enter 'y' if it is on Spotify, 'n' if it isn't:"
  on_spotify = gets.chomp
  puts 'Please, enter album label color:'
  label_color = gets.chomp
  puts 'Please, enter album genre:'
  genre = gets.chomp
  add_a_music_album(title, author_first_name, author_last_name, publish_date, on_spotify, label_color, genre)
end

def add_a_music_album(title, author_first_name, author_last_name, publish_date, on_spotify, label_color, genre)
  album = MusicAlbum.new(publish_date, on_spotify, title, author_first_name, author_last_name)
  label = Label.new(title, label_color)
  author = Author.new(author_first_name, author_last_name)
  genre = Genre.new(genre)
  add_elements(album, label, author, genre)
  store_elements(label, author, genre)
  @music_list.push(album)
  puts 'You have created an album!'
  sleep(1)
  menu
end

def add_a_game_menu
  puts "\n"
  puts 'Please, enter game title:'
  title = gets.chomp
  puts "Please, enter game author's first name:"
  author_first_name = gets.chomp
  puts "Please, enter game author's last name:"
  author_last_name = gets.chomp
  puts 'Please, enter date published (YYYY-MM-DD):'
  publish_date = gets.chomp
  puts "Please, enter 'y' if it is multiplayer, 'n' if it isn't:"
  multiplayer = gets.chomp
  puts 'Please, enter the last date it was played (YYYY-MM-DD):'
  last_played_at = gets.chomp
  puts 'Please, enter game label color:'
  label_color = gets.chomp
  puts 'Please, enter game genre:'
  genre = gets.chomp
  add_game(title, author_first_name, author_last_name, publish_date, multiplayer, last_played_at, label_color, genre)
end

def add_game(title, author_first_name, author_last_name, publish_date, multiplayer, last_played_at, label_color, genre)
  game = Game.new(publish_date, multiplayer, last_played_at, title, author_first_name, author_last_name)
  label = Label.new(title, label_color)
  author = Author.new(author_first_name, author_last_name)
  genre = Genre.new(genre)
  add_elements(game, label, author, genre)
  store_elements(label, author, genre)
  @games.push(game)
  puts 'You have created a game!'
  sleep(1)
  menu
end

def add_elements(item, label, author, genre)
  label.add_item(item)
  author.add_item(item)
  genre.add_item(item)
end

def store_elements(label, author, genre)
  @labels.push(label)
  @authors.push(author)
  @genres.push(genre)
end
