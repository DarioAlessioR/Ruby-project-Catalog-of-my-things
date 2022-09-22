require 'json'

def write_data(books, labels, musics, genres, authors, games)
  write_books(books)
  write_albums(musics)
  write_games(games)
  write_authors(authors)
  write_labels(labels)
  write_genres(genres)
end

def write_books(books)
  books_data = []
  @books.each do |book|
    books_data.push({
                      publish_date: book.publish_date,
                      publisher: book.publisher,
                      cover_state: book.cover_state,
                      title: book.title,
                      author_first_name: book.author_first_name,
                      author_last_name: book.author_last_name,
                      id: book.id
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
                      title: album.title,
                      author_first_name: album.author_first_name,
                      author_last_name: album.author_last_name,
                      id: album.id
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
                      title: game.title,
                      author_first_name: game.author_first_name,
                      author_last_name: game.author_last_name,
                      id: game.id
                    })
  end
  File.write('./data/data_json/games.json', games_data.to_json)
end

def write_authors(authors)
  authors_data = []
  @authors.each do |author|
    author_items = save_author_items(author.items)
    authors_data.push({
                      first_name: author.first_name,
                      last_name: author.last_name,
                      id: author.id,                      
                      items: author_items
                    })
  end
  File.write('./data/data_json/authors.json', authors_data.to_json)
end

def save_author_items(items)
  authored_items = []
  items.each do |item|
    authored_items.push({
                          item_id: item.id,
                          item_class: item.class.name
                        })
  end
  authored_items
end

def write_labels(labels)
  labels_data = []
  @labels.each do |label|
    label_items = save_label_items(label.items)
    labels_data.push({
                      title: label.title,
                      color: label.color,
                      id: label.id,                      
                      items: label_items
                    })
  end
  File.write('./data/data_json/labels.json', labels_data.to_json)
end

def save_label_items(items)
  labeled_items = []
  items.each do |item|
    labeled_items.push({
                          item_id: item.id,
                          item_class: item.class.name
                        })
  end
  labeled_items
end

def write_genres(genres)
  genres_data = []
  @genres.each do |genre|
    genre_items = save_genre_items(genre.items)
    genres_data.push({
                      name: genre.name,
                      id: genre.id,                      
                      items: genre_items
                    })
  end
  File.write('./data/data_json/genres.json', genres_data.to_json)
end

def save_genre_items(items)
  genred_items = []
  items.each do |item|
    genred_items.push({
                          item_id: item.id,
                          item_class: item.class.name
                        })
  end
  genred_items
end
