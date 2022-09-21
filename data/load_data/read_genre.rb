require 'json'
require './genre'

def load_genres(books, games, musics)
  file = './data/data_json/genres.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  genres = []
  genres_data = JSON.parse(File.read(file))

  genres_data.each do |genre|
    new_genre = Genre.new(genre['name'], genre['id'])
    load_items(new_genre, genre['items'], books, games, musics)
    genres.push(new_genre)
  end

  genres
end

def load_items(_genres, items, books, games, musics)
  objetcs = books + games + musics
  items.each do |item|
    objetcs.each do |object|
      genre.add_item(object) if object.id == item['item_id'] && object.instance_of?(item)
    end
  end
end
