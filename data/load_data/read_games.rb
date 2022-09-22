require 'json'
require './game'

def load_games
  file = './data/data_json/games.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  games = []
  games_data = JSON.parse(File.read(file))

  games_data.each do |game|
    games.push(Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['title'],
                        game['author_first_name'], game['author_last_name'], game['id']))
  end

  games
end
