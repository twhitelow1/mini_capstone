class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        # subtotal: params[:subtotal],
        # tax: params[:tax],
        # total: params[:total],
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
        render json: {message: "Sorry, it seems this order doesn not belong to you."}
      end
      else 
      render json: {message: "You must be logged in to view this order."}
    end
end
