class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :variations
  has_many :colors, through: :variations
  has_many :sizes, through: :variations
end
