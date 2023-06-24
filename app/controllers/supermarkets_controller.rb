class SupermarketsController < ApplicationController
  before_action :set_supermarket, only: %i[ show edit update destroy ]

  def index
    @supermarkets = Supermarket.all
  end

  def show; end

  def new
    @supermarket = Supermarket.new
  end

  def edit; end

  def create
    @supermarket = Supermarket.new(supermarket_params)

      if @supermarket.save
        redirect_to supermarket_url(@supermarket), notice: "Supermarket was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
  end

  def update
      if @supermarket.update(supermarket_params)
        redirect_to supermarket_url(@supermarket), notice: "Supermarket was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @supermarket.destroy
      redirect_to supermarkets_url, notice: "Supermarket was successfully destroyed."
  end

  private
    def set_supermarket
      @supermarket = Supermarket.find(params[:id])
    end

    def supermarket_params
      params.require(:supermarket).permit(:first_name)
    end
end
