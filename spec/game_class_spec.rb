require 'rspec'
require './item'
require './game'

describe Game do
  let(:game) { Game.new(true, '2019-10-17', '2022-10-17') }

  describe 'attributes' do
    it 'has the correct multiplayer attribute' do
      expect(game.multiplayer).to be(true)
    end

    it 'has the correct last_played_at attribute' do
      expect(game.last_played_at).to eq('2019-10-17')
    end

    it 'has the correct publish_date attribute' do
      expect(game.publish_date).to eq('2022-10-17')
    end
  end

  describe '#to_json' do
    it 'returns a JSON representation of the game object' do
      json_data = JSON.parse(game.to_json)
      expect(json_data['multiplayer']).to eq(true)
      expect(json_data['last_played_at']).to eq('2019-10-17')
      expect(json_data['publish_date']).to eq('2022-10-17')
    end
  end
end
