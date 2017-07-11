# frozen_string_literal: true

class AuctionsController < OpenReadController
  before_action :set_auction, only: [:show, :update, :destroy]
  # GET /auctions
  def index
    @auctions = current_user.auctions
    render json: @auctions
  end

  # GET /auctions/1
  def show
    render json: @auction
  end

  # DELETE /auctions/1
  def destroy
    @auction.destroy
    head :no_content
  end

  # PATCH/PUT /auctions/1
  def update
    if @auction.update(auction_params)
      render json: @auction
      # head :no_content
    else
      render json: @auction.errors, status: :unprocessable_entity
    end
  end

  # POST /auctions

  def create
    @auction = current_user.auctions.build(auction_params)
    if @auction.save
      render json: @auction, status: :created
    else
      render json: @auction.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_auction
    # @auction = Auction.find(params[:id])
    @auction = Auction.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def auction_params
    params.require(:auction).permit(:organization, :start_date,
                                    :end_date, :active, :total_items)
  end
end
