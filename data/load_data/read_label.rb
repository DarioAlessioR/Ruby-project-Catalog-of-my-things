require 'json'
require './label'

def load_labels(books, games, musics)
  file = './data/data_json/labels.json'

  return [] unless File.exist?(file)
  return [] if File.zero?(file)

  labels = []
  labels_data = JSON.parse(File.read(file))

  labels_data.each do |label|
    new_label = Label.new(label['title'], label['color'], label['id'])
    load_items(new_label, label['items'], books, games, musics)
    labels.push(new_label)
  end

  labels
end

def load_items(_labels, items, books, games, musics)
  objetcs = books + games + musics
  items.each do |item|
    objetcs.each do |object|
      label.add_item(object) if object.id == item['item_id'] && object.instance_of?(item)
    end
  end
end
