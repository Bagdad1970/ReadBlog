class Book < ApplicationRecord
  belongs_to :author
  belongs_to :literary_form
  belongs_to :genre

  has_many :user_books
  has_many :users, through: :user_books

  validates :title, presence: true
end
