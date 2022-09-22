require_relative '../book'

describe Book do
  before(:each) do
    @new_book = Book.new('2020-01-01', 'NYT', 'bad', 'Dona Barbara', 'Romulo', 'Gallegos')
  end

  describe '#new book' do
    it 'receives 6 parameters and return a Book object' do
      expect(@new_book).to be_an_instance_of Book
    end
  end

  describe '#new book' do
    it 'Can be archived if cover_state = bad' do
      expect(@new_book.send(:can_be_archived?)).to eql true
    end

    it 'Should be archived' do
      @new_book.move_to_archive
      expect(@new_book.archived).to be true
    end
  end
end
