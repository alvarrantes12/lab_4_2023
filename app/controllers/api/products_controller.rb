module Api
  class ProductsController < ApplicationController
    before_action :set_products, only: %i[show edit update destroy]
    skip_before_action :verify_authenticity_token

    def index
      @products = Product.all
      render json: @products
    end

    def show
      render json: @product
    end

    def create
      puts request.raw_post
      @product = Product.new(product_params)

      if @product.save
        render json: @product, status: :created
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    def update
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @product.destroy
      head :no_content
    end

    private
    def set_products
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price)
    end
  end
end