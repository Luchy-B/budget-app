class Operation < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category, dependent: :destroy

  delegate :icon, to: :category, prefix: true, allow_nil: true

  validates :name, presence: true, length: { maximum: 60 }
end
