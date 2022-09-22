require_relative '../label'
require_relative '../item'

describe Label do
  before(:each) do
    @new_label = Label.new('Puls', 'black')
  end

  describe '#new label' do
    it 'receives 2 parameters and return a Label object' do
      expect(@new_label).to be_an_instance_of Label
    end
  end

  describe '#new label' do
    new_item = Item.new('2010-01-01')
    it 'Can push an item to the items array' do
      @new_label.add_item(new_item)
      expect(@new_label.items[0]).to eql new_item
    end

    it 'Can push an item to the @items array 2' do
      @new_label.add_item(new_item)
      expect(@new_label.items.length).to eq 1
    end

    it 'Can adds self as a property of the item object' do
      @new_label.add_item(new_item)
      expect(new_item.label).to eql @new_label
    end

    it 'Should check if it is multiplayer' do
      expect(@new_label.color = 'red').to eql 'red'
    end
  end
end
