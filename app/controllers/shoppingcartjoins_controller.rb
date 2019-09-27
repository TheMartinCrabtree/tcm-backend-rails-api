class ShoppingcartjoinsController < ApplicationController
  before_action :set_shoppingcartjoin, only: [:show, :update, :destroy]

  # GET /shoppingcartjoins
  def index
    @shoppingcartjoins = Shoppingcartjoin.all

    render json: @shoppingcartjoins
  end

  # GET /shoppingcartjoins/1
  def show
    render json: @shoppingcartjoin
  end

  # POST /shoppingcartjoins
  def create
    @shoppingcartjoin = Shoppingcartjoin.new(shoppingcartjoin_params)

    if @shoppingcartjoin.save
      render json: @shoppingcartjoin, status: :created, location: @shoppingcartjoin
    else
      render json: @shoppingcartjoin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoppingcartjoins/1
  def update
    if @shoppingcartjoin.update(shoppingcartjoin_params)
      render json: @shoppingcartjoin
    else
      render json: @shoppingcartjoin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoppingcartjoins/1
  def destroy
    @shoppingcartjoin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoppingcartjoin
      @shoppingcartjoin = Shoppingcartjoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shoppingcartjoin_params
      params.require(:shoppingcartjoin).permit(:item_id, :shoppingcart_id, :itemquantity)
    end
end
