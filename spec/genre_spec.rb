require 'rspec'
require './genre'
require './music_album'

describe Genre do
  subject { Genre.new('pop') }

  context "#initialize" do
    it "initializes properly" do
      expect(subject.name).to eql('pop')
    end
  end

  context "#add_item" do
    it "adds items" do
      music_album = MusicAlbum.new('2023-04-05', true)
      subject.add_item(item: music_album)
      expect(music_album.genre).to eq(subject)
    end
  end
end