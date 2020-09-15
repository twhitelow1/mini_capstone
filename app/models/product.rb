class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greateer_than: 0 }
  validates :description, length: { in: 2..1500 }

  has_many :orders
  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

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
