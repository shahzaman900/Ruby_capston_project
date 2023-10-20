require 'rspec'
require './music_album'

describe MusicAlbum do
  subject { MusicAlbum.new('2023-05-06', true) }

  context "#initialize" do
    it "initializes properly" do
      expect(subject.publish_date).to eql('2023-05-06')
      expect(subject.on_spotify).to eql(true)
    end
  end

  context "can_be_archived?" do
    it "can be archived returns false when super's is false" do
      expect(subject.can_be_archived?).to eql(false)
    end
  end
end