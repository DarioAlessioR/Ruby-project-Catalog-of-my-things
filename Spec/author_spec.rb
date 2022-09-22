require_relative '../author'
require_relative '../item'

describe Author do
  before(:each) do
    @new_author = Author.new('Dario', 'Alessio')
  end

  describe '#new author' do
    it 'receives 2 parameters and return a Author object' do
      expect(@new_author).to be_an_instance_of Author
    end
  end

  describe '#new author' do
    new_item = Item.new('2010-01-01')
    it 'Can push an item to the @items array' do
      @new_author.add_item(new_item)
      expect(@new_author.items[0]).to eql new_item
      expect(@new_author.items.length).to eq 1
    end

    it 'Can push an item to the @items array 2' do
      @new_author.add_item(new_item)
      expect(@new_author.items.length).to eq 1
    end

    it 'Can adds self as a property of the item object' do
      @new_author.add_item(new_item)
      expect(new_item.author).to eql @new_author
    end
  end
end
