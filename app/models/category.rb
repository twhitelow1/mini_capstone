class Category < ApplicationRecord
  has_many :category_products

  def products
  end
end
