class HandsController < ApplicationController
  before_action :set_hand, only: [:show, :update, :destroy]

  # GET /hands
  # GET /hands.json
  def index
    @hands = Hand.all

    render json: @hands
  end

  # GET /hands/1
  # GET /hands/1.json
  def show
    render json: @hand
  end

  # POST /hands
  # POST /hands.json
  def create
    @hand = Hand.new(hand_params)

    if @hand.save
      render json: @hand, status: :created, location: @hand
    else
      render json: @hand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hands/1
  # PATCH/PUT /hands/1.json
  def update
    @hand = Hand.find(params[:id])

    if @hand.update(hand_params)
      head :no_content
    else
      render json: @hand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hands/1
  # DELETE /hands/1.json
  def destroy
    @hand.destroy

    head :no_content
  end

  private

    def set_hand
      @hand = Hand.find(params[:id])
    end

    def hand_params
      params.require(:hand).permit(:card)
    end
end
