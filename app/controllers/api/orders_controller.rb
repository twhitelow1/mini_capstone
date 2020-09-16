class Api::OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      @order = Order.new(
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity].to_f,
        tax: product.tax * params[:quantity].to_f,
        total: product.total * params[:quantity].to_f,
      )
      if @order.save
        render json: { order: @order }
      else
        render json: { errors: @order.errors.full_messages }, status: 422
      end
    else
      render json: { message: "You must be logged in to order" }
    end
  end

  def show
    if current_user
      @order = Order.find_by(id: params[:id])
      if current_user.id == @order.user_id
        render "show.json.jb"
      else
        render json: { message: "Sorry, it seems this order doesn not belong to you." }
      end
    else
      render json: { message: "You must be logged in to view this order." }
    end
  end

  def index
    if current_user
      orders = Order.all
      @orders = []
      orders.each do |order|
        if current_user.id == order.user_id
          @orders << order
        end
      end
      render "index.json.jb"
    else
      render json: { message: "You must be logged in to view your orders." }
    end
  end
end
