require_relative '../genre'
require_relative '../item'

describe Genre do
  before(:each) do
    @new_genre = Genre.new('Rock')
  end

  describe '#new genre' do
    it 'receives 1 parameters and return a Genre object' do
      expect(@new_genre).to be_an_instance_of Genre
    end
  end

  describe '#new genre' do
    new_item = Item.new('2010-01-01')
    it 'Can push an item to the items array' do
      @new_genre.add_item(new_item)
      expect(@new_genre.items[0]).to eql new_item
    end

    it 'Can adds self as a property of the item object' do
      @new_genre.add_item(new_item)
      expect(new_item.genre).to eql @new_genre
    end
  end

  describe '#new genre' do
    new_item = Item.new('2000-01-01')
    it 'Can push an item to the items array' do
      @new_genre.add_item(new_item)
      expect(@new_genre.items[0]).to eql new_item
    end

    it 'Can push an item to the @items array 2' do
      @new_genre.add_item(new_item)
      expect(@new_genre.items.length).to eq 1
    end

    it 'Can adds self as a property of the item object' do
      @new_genre.add_item(new_item)
      expect(new_item.genre).to eql @new_genre
    end
  end
end
