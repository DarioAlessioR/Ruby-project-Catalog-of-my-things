require 'json'
require './author'

def load_authors(books, games, musics)
  file = './data/data_json/authors.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  authors = []
  authors_data = JSON.parse(File.read(file))

  authors_data.each do |author|
    new_author = Author.new(author['id'], author['first_name'], author['last_name'])
    load_items(new_author, author['items'], books, games, musics)
    authors.push(new_author)
  end

  authors
end

def load_items(author, items, books, games, musics)
  objetcs = books + games + musics
  items.each do |item|
    objetcs.each do |object|
      author.add_item(object) if object.id == item['item_id'] && object.instance_of?(item)
    end
  end
end
