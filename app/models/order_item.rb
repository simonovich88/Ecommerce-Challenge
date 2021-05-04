class OrderItem < ApplicationRecord
  belongs_to :variation
  belongs_to :order
end
