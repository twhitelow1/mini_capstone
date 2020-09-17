class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_f
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * quantity,
      tax: product.tax * quantity,
      total: product.total * quantity,
    )
    if @order.save
      render json: { order: @order }
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders
      render "show.json.jb"
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
end
