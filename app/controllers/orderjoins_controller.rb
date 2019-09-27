class OrderjoinsController < ApplicationController
  before_action :set_orderjoin, only: [:show, :update, :destroy]

  # GET /orderjoins
  def index
    @orderjoins = Orderjoin.all

    render json: @orderjoins
  end

  # GET /orderjoins/1
  def show
    render json: @orderjoin
  end

  # POST /orderjoins
  def create
    @orderjoin = Orderjoin.new(orderjoin_params)

    if @orderjoin.save
      render json: @orderjoin, status: :created, location: @orderjoin
    else
      render json: @orderjoin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orderjoins/1
  def update
    if @orderjoin.update(orderjoin_params)
      render json: @orderjoin
    else
      render json: @orderjoin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orderjoins/1
  def destroy
    @orderjoin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderjoin
      @orderjoin = Orderjoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orderjoin_params
      params.require(:orderjoin).permit(:item_id, :order_id, :itemquantity)
    end
end
