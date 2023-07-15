require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires a name' do
      user = User.new(email: 'test@example.com', password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'has many operations' do
      expect(User.reflect_on_association(:operations).macro).to eq(:has_many)
    end

    it 'has many categories' do
      expect(User.reflect_on_association(:categories).macro).to eq(:has_many)
    end
  end
end
