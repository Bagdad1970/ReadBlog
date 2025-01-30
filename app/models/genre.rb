class Genre < ApplicationRecord
  has_many :books, dependent: :nullify

  validates :genre_name, presence: true
  validates :genre_name, uniqueness: { message: "Название жанра должно быть уникальным"}

  validates :genre_name, format: { with: /[А-Яа-яЁё ]+/, message: "Название жанра должно быть написано на русском языке" }
end
