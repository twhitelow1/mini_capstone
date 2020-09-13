class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILike ?", "%#{params[:search]}%")
    end

    if params[:discount] == true
      @products = @products.where("price < ?", 200)
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(price: :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(id: :asc)
    end

    render "index.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price] || @product.price
    @product.brand = params[:brand] || @product.brand
    @product.type = params[:type] || @product.type
    @product.year = params[:year] || @product.year
    @product.description = params[:description] || @product.description
    if @product.save
      Image.create!(product_id: @product.id, url: params[:image_url])
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed sucessfully!" }
  end

  def create
    @product = Product.new(
      name: params[:name],
      brand: params[:brand],
      year: params[:year],
      type: params[:type],
      price: params[:price],
      description: params[:description],
    )

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end
end
