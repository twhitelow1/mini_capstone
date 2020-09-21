class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greateer_than: 0 }
  validates :description, length: { in: 2..1500 }

  has_many :orders, through: :carted_products
  has_many :images
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  def categories
    category_products.map do |category_product|
      category_product.category
    end
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  scope :title_search, ->(search_terms) { where("name ILIKE ?", "%#{search_terms}%") if search_terms }
  scope :discounted, ->(check_discount) { where("price < ?", 10) if check_discount }
  scope :sorted, ->(sort, sort_order) {
          if sort == "price" && sort_order == "asc"
            order(price: :asc)
          elsif sort == "price" && sort_order == "desc"
            order(price: :desc)
          else
            order(id: :asc)
          end
        }

  def friendly_updated_at
    created_at.strftime("%B%e, %Y")
  end

  def is_discounted?
    if price <= 200
    end
  end

  def tax
    price * 0.09
  end

  def total
    tax + price
  end
end
