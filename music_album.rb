require './item'

class MusicAlbum < Item
  attr_accessor :title, :on_spotify

  def initialize(
    title,
    author,
    publish_date,
    on_spotify,
    label,
    genre,
    id = nil
  )

    super(id, publish_date)

    @title = title
    @publish_date = publish_date
    @on_spotify = on_spotify

    add_author(author)
    add_genre(genre)
    add_label(label)
  end

  def can_be_archived?
    return true if super && @on_spotify == true

    false
  end
end
