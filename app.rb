require_relative './menu_options'
require_relative './data/load_data/read_books'
require_relative './data/load_data/read_games'
require_relative './data/load_data/read_musics'
require_relative './data/load_data/read_authors'
require_relative './data/load_data/read_label'
require_relative './data/load_data/read_genre'
require './book'
require './music_album'
require './game'
require './author'
require './genre'
require './label'

class App
  attr_accessor :books, :music_list, :games, :authors, :labels, :genres

  def initialize
    @books = load_books
    @games = load_games
    @music_list = load_musics
    @authors = load_authors(@books, @games, @music_list)
    @labels = load_labels(@books, @games, @music_list)
    @genres = load_genres(@books, @games, @music_list)
  end

  def run
    menu
  end
end
