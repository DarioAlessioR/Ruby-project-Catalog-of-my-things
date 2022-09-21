require './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer, last_played_at, id = Random.rand(1..1000))
    super(publish_date, id)

    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
    @archived = false
  end

  private

  def can_be_archived?
    return true if super && ((Date.now - @last_played_at) / 365).to_i > 2

    false
  end
end
