require_relative '../book'

RSpec.describe Book do
  let(:publish_date) { '2022-01-01' }
  let(:name) { 'Sample Book' }
  let(:publisher) { 'Wils' }
  let(:cover_state) { 'good' }

  subject { described_class.new(name, publisher, cover_state, publish_date) }

  describe '#can_be_archived?' do
    context "when cover_state is 'bad'" do
      let(:cover_state) { 'bad' }

      it 'returns true' do
        expect(subject.can_be_archived?).to be true
      end
    end
  end

  describe 'attributes' do
    it 'has a title' do
      expect(subject.name).to eq(name)
    end
  end
end
