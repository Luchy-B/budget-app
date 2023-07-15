require 'rails_helper'

RSpec.describe Operation, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Test Category', icon: fixture_file_upload('img-4.png', 'image/png'), author: user) }

  it 'requires a name' do
    operation = Operation.new(amount: 50, author: user, category_id: category.id)
    expect(operation).not_to be_valid
    expect(operation.errors[:name]).to include("can't be blank")
  end

  it 'belongs to a category' do
    expect(Operation.reflect_on_association(:category).macro).to eq(:has_many)
  end
end
