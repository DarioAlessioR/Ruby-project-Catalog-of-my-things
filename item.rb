require 'date'

class Item
  attr_reader :id, :genre, :publish_date, :archived, :author, :label

  def initialize(publish_date, id = Random.rand(1..1000))
    @id = id
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def add_author(author)
    @author = author
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if ((DateTime.now - @publish_date) / 365).to_i > 10

    false
  end
end
