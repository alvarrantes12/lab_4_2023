module Api
  class ProductsController < ApplicationController
    before_action :set_product, only: %i[ show edit update destroy ]

    def index
      @products = Product.all
    end

    def show; end

    def new
      @product = Product.new
    end

    def edit; end

    def create
      @product = Product.new(product_params)

        if @product.save
          render 'api/products/index', status: :created, location: @product 
        else
          render json: @product.errors, status: :unprocessable_entity 
        end
      end

    def update
        if @product.update(product_params)
          render 'api/products/index', status: :ok, location: @product 
        else
        render json: @product.errors, status: :unprocessable_entity 
        end
      end

    def destroy
      @product.destroy
      render 'api/products/index', status: :ok
      end

    private
      def set_product
        @product = Product.find(params[:id])
      end
      def product_params
        params.require(:product).permit(:name, :price)
      end
  end
end