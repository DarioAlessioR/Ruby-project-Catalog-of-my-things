require 'json'

def write_data(books, labels, musics, genres, authors, games)
  write_books(books)
  write_albums(musics)
  write_games(games)
  #write_authors
  #write_labels
  #write_genres
end

def write_books(books)
  books_data = []
  @books.each do |book|
    books_data.push({
                      publish_date: book.publish_date,
                      publisher: book.publisher,
                      cover_state: book.cover_state,
                      id: book.id,
                      title: book.title,
                      author_first_name: book.author_first_name,
                      author_last_name: book.author_last_name
                    })
  end
  File.write('./data/data_json/books.json', books_data.to_json)
end

def write_albums(musics)
  albums_data = []
  @music_list.each do |album|
    albums_data.push({
                      publish_date: album.publish_date,
                      on_spotify: album.on_spotify,
                      id: album.id,
                      title: album.title,
                      author_first_name: album.author_first_name,
                      author_last_name: album.author_last_name
                    })
  end
  File.write('./data/data_json/albums.json', albums_data.to_json)
end

def write_games(games)
  games_data = []
  @games.each do |game|
    games_data.push({
                      publish_date: game.publish_date,
                      multiplayer: game.multiplayer,
                      last_played_at: game.last_played_at,
                      id: game.id,
                      title: game.title,
                      author_first_name: game.author_first_name,
                      author_last_name: game.author_last_name
                    })
  end
  File.write('./data/data_json/games.json', games_data.to_json)
end
