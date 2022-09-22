require_relative '../music_album'

describe MusicAlbum do
  before(:each) do
    @new_album = MusicAlbum.new('2020-01-01', 'n', 'The Wall', 'Pink', 'Floyd')
  end

  describe '#new album' do
    it 'receives 5 parameters and return a MusicAlbum object' do
      expect(@new_album).to be_an_instance_of MusicAlbum
    end
  end

  describe '#new album' do
    it 'Can be archived if parents methods are true and album is on spotify' do
      expect(@new_album.send(:can_be_archived?)).to eql false
    end

    it 'Should be archived' do
      @new_album.move_to_archive
      expect(@new_album.archived).to be false
    end
  end
end
