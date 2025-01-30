class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :surname, :firstname, presence: true
 
  validates :surname, :firstname, length: { maximum: 40 }

  validates :surname, format: { with: /[А-Яа-яЁё]+/, message: "Фамилия содержит только буквы русского алфавита" }
  validates :firstname, format: { with: /[А-Яа-яЁё]+/, message: "Имя содержит только буквы русского алфавита" }
  
  validates :surname, uniqueness: { scope: [:firstname, :lastname], message: "Имя автора не должно повторяться" }
end
