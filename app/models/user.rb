class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :user_books
  has_many :books, through: :user_books

  normalizes :email_address, with: -> email { email.strip.downcase }
  normalizes :username, with: -> username { username.strip.downcase }

  validates :username, uniqueness: true, length: { maximum: 40 }
  validates :email_address, uniqueness: true, length: { maximum: 50 }

  validates :email_address, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Неверный формат электронной почты" }
end
