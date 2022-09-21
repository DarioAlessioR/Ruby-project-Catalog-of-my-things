require 'json'
require './music_album'

def load_musics
  file = './data/data_json/musics.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  musics = []
  musics_data = JSON.parse(File.read(file))

  musics_data.each do |music|
    musics.push(MusicAlbum.new(music['publish_date'], music['on_spotify'], music['id']))
  end

  musics
end
