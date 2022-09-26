require './item'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify, :archived, :publish_date, :title, :author_first_name, :author_last_name
  attr_reader :id, :genre, :author, :label

  def initialize(publish_date, on_spotify, title, author_first_name, author_last_name, id = Random.rand(1..1000))
    super(publish_date, id)
    @publish_date = Date.parse(publish_date)
    @id = id
    @on_spotify = on_spotify == 'y'
    @title = title
    @author_first_name = author_first_name
    @author_last_name = author_last_name
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    return true if super && @on_spotify == 'y'

    false
  end
end
