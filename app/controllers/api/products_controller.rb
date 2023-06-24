module Api
  class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token
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
        render 'api/products/show', status: :created
      else
        render json: @product.errors, status: :unprocessable_entity 
      end
    end
  
    def update
      if @product.update(product_params)
        render 'api/products/show', status: :ok
      else
        render json: @product.errors, status: :unprocessable_entity 
      end
    end
  
    def destroy
      @product.destroy
      render 'api/products/show', status: :ok
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

