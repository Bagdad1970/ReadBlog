class User < ApplicationRecord
  validates :username, uniqueness: true, limit: 40
  validates :email, uniqueness: true, limit: 50

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Неверный формат электронной почты" }
end
