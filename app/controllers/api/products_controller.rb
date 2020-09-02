class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "all_products.json.jb"
  end

  def view_product_action
    @product = Product.first
    render "view_product.json.jb"
  end
end
