require 'json'
require './book'

def load_books
  file = './data/data_json/books.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  books = []
  books_data = JSON.parse(File.read(file))

  books_data.each do |book|
    books.push(Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'], book['title'], book['author_first_name'], book['author_last_name']))
  end

  books
end
