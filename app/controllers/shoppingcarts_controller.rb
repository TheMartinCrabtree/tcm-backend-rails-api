class ShoppingcartsController < ApplicationController
  before_action :set_shoppingcart, only: [:show, :update, :destroy]

  
  # GET /shoppingcarts
  def index
    @shoppingcarts = Shoppingcart.all

    render json: @shoppingcarts
  end

  # GET /shoppingcarts/1
  def show
    render json: @shoppingcart
  end

  # POST /shoppingcarts
  def create
    @shoppingcart = Shoppingcart.new(shoppingcart_params)

    if @shoppingcart.save
      render json: @shoppingcart, status: :created, location: @shoppingcart
    else
      render json: @shoppingcart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoppingcarts/1
  def update
    if @shoppingcart.update(shoppingcart_params)
      render json: @shoppingcart
    else
      render json: @shoppingcart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoppingcarts/1
  def destroy
    @shoppingcart.destroy
  end

  # def contents
  #   byebug

  #   @contents = self.shoppincartjoins
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoppingcart
      @shoppingcart = Shoppingcart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shoppingcart_params
      params.require(:shoppingcart).permit(:user_id)
    end
end
