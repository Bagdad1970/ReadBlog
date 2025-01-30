class LiteraryForm < ApplicationRecord
  has_many :books, dependent: :nullify

  validates :form_name, presence: true
  validates :form_name, uniqueness: { message: "Название литературной формы должно быть уникальным"}

  validates :form_name, format: { with: /[А-Яа-яЁё]+/, message: "Название литературной формы должно быть написано на русском языке" }
end
