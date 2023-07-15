class Category < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :operations, dependent: :destroy
  has_one_attached :icon

  validates :name, presence: true, length: { maximum: 60 }
  validates :icon, presence: true
end
