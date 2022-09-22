def list_all_books
  if @books.empty?
    puts 'There are no books available'
    sleep(1)
  else
    @books.each do |book|
      puts "id: #{book.id} - #{book.title}, by #{book.author_first_name} #{book.author_last_name}"
    end
    sleep(2)
  end
  menu
end

def list_all_music_albums
  if @music_list.empty?
    puts 'There are no albums available'
    sleep(1)
  else
    @music_list.each do |album|
      puts "id: #{album.id} - #{album.title}, by #{album.author_first_name} #{album.author_last_name}"
    end
    sleep(2)
  end
  menu
end

def list_all_games
  if @games.empty?
    puts 'There are no games available'
    sleep(1)
  else
    @games.each do |game|
      puts "id: #{game.id} - #{game.title}, by #{game.author_first_name} #{game.author_last_name}"
    end
    sleep(2)
  end
  menu
end

def list_all_genres
  if @genres.empty?
    puts 'There are no items available'
    sleep(1)
  else
    @genres.each_with_index do |genre, idx|
      puts "#{idx + 1}) #{genre.name}"
    end
    sleep(2)
  end
  menu
end

def list_all_labels
  if @labels.empty?
    puts 'There are no items available'
    sleep(1)
  else
    @labels.each_with_index do |label, idx|
      puts "#{idx + 1}) #{label.title} - Label color: #{label.color}"
    end
    sleep(2)
  end
  menu
end

def list_all_authors
  if @authors.empty?
    puts 'There are no items available'
    sleep(1)
  else
    @authors.each_with_index do |author, idx|
      puts "#{idx + 1}) #{author.first_name} #{author.last_name}"
    end
    sleep(2)
  end
  menu
end
