require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', author: 'Who Knows?', price: '3.50',pubdate: '1984-01-01')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end
    it 'is not valid without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end
    it 'is not valid without a date' do
        subject.pubdate = nil
        expect(subject).not_to be_valid
    end
end