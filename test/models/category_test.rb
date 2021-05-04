require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'creates a subcategory' do
    category = Category.create(name: "Clothes")
    subcategory = Category.create(name: "Women_Clothes", parent: category)
    assert !category.subcategories.nil?
  # test "the truth" do
  #   assert true
  end
end
