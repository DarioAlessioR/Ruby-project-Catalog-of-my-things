require_relative '../game'

describe Game do
  before(:each) do
    @new_game = Game.new('2011-01-01', 'y', '2010-01-01', 'Super Mario', 'Nintendo', 'Corporation')
  end

  describe '#new game' do
    it 'receives 6 parameters and return a Game object' do
      expect(@new_game).to be_an_instance_of Game
    end
  end

  describe '#new game' do
    it 'Can be archived if parents methods are true and game played more than 2 years ago' do
      expect(@new_game.send(:can_be_archived?)).to eql true
    end

    it 'Should be archived' do
      @new_game.move_to_archive
      expect(@new_game.archived).to be true
    end

    it 'Should return multiplayer = y' do
      expect(@new_game.multiplayer = 'y').to eql 'y'
    end

  end
end
