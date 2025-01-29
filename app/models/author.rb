class Author < ApplicationRecord
  validates :surname, :firstname, presence: true
  validates :surname, format: { with: /[А-Яа-яЁё]+/, message: "Фамилия содержит только буквы русского алфавита"}
  validates :firstname, format: { with: /[А-Яа-яЁё]+/, message: "Имя содержит только буквы русского алфавита"}
  validates :surname, :firstname, length: { maximum: 40 }
end
