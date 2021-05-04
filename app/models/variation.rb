class Variation < ApplicationRecord
  belongs_to :product
  belongs_to :size
  belongs_to :color
  has_many :order_items
  has_many :orders, through: :order_items
end
