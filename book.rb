require './item'

class Book < Item
  attr_accessor :publisher, :cover_state, :title, :author_first_name, :author_last_name

  def initialize(publish_date, publisher, cover_state, title, author_first_name, author_last_name, id = Random.rand(1..1000))
    super(publish_date, id)
    @title = title
    @author_first_name = author_first_name
    @author_last_name = author_last_name
    @publisher = publisher
    @cover_state = cover_state
    @archived = false
  end

  private

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
end
