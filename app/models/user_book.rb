class UserBook < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :mark, presence: true
  validates :mark, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  validates :review, length: { maximum: 5000 }
end
