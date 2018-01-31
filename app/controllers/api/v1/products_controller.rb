class Api::V1::ProductsController < ApplicationController
  before_action :load_product, only: [:show, :update, :destroy]

  def index
    render json: {data: ActiveModel::Serializer::ArraySerializer.new(Product.all)}, status: 200
  end

  def show
    render json: {data: ProductSerializer.new(@product)}, status: 200
  end

  def create
    product = Product.new product_params
    if product.save
      render json: {data: ProductSerializer.new(product)}, status: 201
    else
      render json: {errors: product.errors.messages}, status: 400
    end
  end

  def update
    if @product.update product_params
      render json: {data: ProductSerializer.new(@product)}, status: 200
    else
      render json: {errors: @product.errors.messages}, status: 400
    end
  end

  def destroy
    if @product.destroy
      render json: {data: ProductSerializer.new(@product)}, status: 200
    else
      render json: {message: "Cannot delete right now!"}, status: 400
    end
  end

  private
  def load_product
    render_404 unless (@product = Product.find_by id: params[:id])
  end

  def product_params
    params.require(:product).permit :name, :price, :manufacturer_id, :image, :description
  end
end
