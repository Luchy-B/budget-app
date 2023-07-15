require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }

  it 'requires a name' do
    category = Category.new(icon: fixture_file_upload('img-4.png', 'image/png'), author: user)

    expect(category).not_to be_valid
    expect(category.errors[:name]).to include("can't be blank")
  end

  it 'belongs to an author (user)' do
    expect(Category.reflect_on_association(:author).macro).to eq(:belongs_to)
  end

  it 'has many operations' do
    expect(Category.reflect_on_association(:operations).macro).to eq(:has_many)
  end
end
