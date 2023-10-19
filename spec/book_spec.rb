require_relative '../book'

RSpec.describe Book do
  let(:published_date) { '2022-01-01' }
  let(:title) { 'Sample Book' }
  let(:author) { 'John Doe' }
  let(:genre) { 'Fiction' }
  let(:cover_state) { 'good' }

  subject { described_class.new(published_date, title, author, genre, cover_state) }

  describe '#can_be_archived?' do
    context "when cover_state is 'bad'" do
      let(:cover_state) { 'bad' }

      it 'returns true' do
        expect(subject.can_be_archived?).to be true
      end
    end

    context "when parent's method returns false and cover_state is not 'bad'" do
      before do
        allow(subject).to receive(:super).and_return(false)
      end

      it 'returns false' do
        expect(subject.can_be_archived?).to be false
      end
    end
  end

  describe 'attributes' do
    it 'has a title' do
      expect(subject.title).to eq(title)
    end

    it 'has an author' do
      expect(subject.author).to eq(author)
    end

    it 'has a genre' do
      expect(subject.genre).to eq(genre)
    end
  end
end
