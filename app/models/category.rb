class Category < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :subcategories, class_name: 'Category', foreign_key: :parent_id, dependent: :destroy
  belongs_to :parent, class_name: 'Category', optional: true
  scope :children, ->(id) {where(parent_id: id)}
  
  def self.all_children
    hash = {}
    all.map do |child|
        hash[child.name]=child.subcategories.pluck(:name) if child.subcategories.present?
    end
    hash
  end
end
