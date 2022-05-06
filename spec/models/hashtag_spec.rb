require 'rails_helper'

RSpec.describe Hashtag, type: :model do
  describe 'when hashtag is less than 1 character' do
    it 'does not accept contentless hashtag' do
      expect { FactoryBot.create(:hashtag, hashtag: '') }.to raise_exception
    end
  end

  describe 'when hashtag is more than 20 character' do
    it 'does not accept too long hashtag' do
      expect { FactoryBot.create(:hashtag, hashtag: Faker::Alphanumeric.alpha(number: 30)) }.to raise_exception
    end
  end

  describe 'when hashtag which not contain only alphanumeric characters' do
    it 'does not accept hashtag which contain special characters' do
      expect { FactoryBot.create(:hashtag, hashtag: 'Real69?') }.to raise_exception
    end
  end

  describe 'when hashtag which is valid' do
    let(:hashtag) { FactoryBot.create(:hashtag, hashtag: '667') }

    it 'Hashtag valid' do
      hashtag.save
      expect(Hashtag.count).to eq(1)
    end
  end
end
