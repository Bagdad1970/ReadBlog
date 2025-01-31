class User < ApplicationRecord
  has_many :user_books
  has_many :books, through: :user_books

  validates :username, uniqueness: true, length: { maximum: 40 }
  validates :email, uniqueness: true, length: { maximum: 50 }

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Неверный формат электронной почты" }
end
