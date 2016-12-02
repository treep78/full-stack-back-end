class CardsController < ProtectedController
  before_action :set_card, only: [:show, :update, :destroy]

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:name, :card_class)
  end

  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all

    render json: @cards
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    render json: Card.find(params[:id])
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    if @card.update(card_params)
      head :no_content
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy

    head :no_content
  end
end
