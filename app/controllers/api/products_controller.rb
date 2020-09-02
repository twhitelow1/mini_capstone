class Api::ProductsController < ApplicationController
  def all_products_action
    render "all_products.json.jb"
  end
end
