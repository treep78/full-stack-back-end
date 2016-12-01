class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :update, :destroy]

  # GET /decks
  # GET /decks.json
  def index
    @decks = Deck.all

    render json: @decks
  end

  # GET /decks/1
  # GET /decks/1.json
  def show
    render json: @deck
  end

  # POST /decks
  # POST /decks.json
  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      render json: @deck, status: :created, location: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decks/1
  # PATCH/PUT /decks/1.json
  def update
    @deck = Deck.find(params[:id])

    if @deck.update(deck_params)
      head :no_content
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decks/1
  # DELETE /decks/1.json
  def destroy
    @deck.destroy

    head :no_content
  end

  private

    def set_deck
      @deck = Deck.find(params[:id])
    end

    def deck_params
      params.require(:deck).permit(:name, :description, :cards)
    end
end
