require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'when tweet body is less than 1 character' do
    it 'does not accept contentless tweets' do
      expect { FactoryBot.create(:tweet, body: '') }.to raise_exception
    end
  end

  describe 'when tweet body is more than 280 characters' do
    it 'does not accept too long tweets' do
      expect { FactoryBot.create(:tweet, body: Faker::Hipster.paragraph_by_chars(characters: 300, supplemental: false)) }.to raise_exception
    end
  end
end
