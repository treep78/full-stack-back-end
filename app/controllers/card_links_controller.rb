class CardLinksController < ProtectedController
  before_action :set_card_link, only: [:show, :update, :destroy]

  # GET /card_links
  # GET /card_links.json
  def index
    @card_links = CardLink.all

    render json: @card_links
  end

  # GET /card_links/1
  # GET /card_links/1.json
  def show
    render json: @card_link
  end

  # POST /card_links
  # POST /card_links.json
  def create
    @card_link = CardLink.new(card_link_params)
    # @card_link = current_user.card_links.build(card_link_params)

    if @card_link.save
      render json: @card_link, status: :created
    else
      render json: @card_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /card_links/1
  # PATCH/PUT /card_links/1.json
  def update
    @card_link = CardLink.find(params[:id])

    if @card_link.update(card_link_params)
      head :no_content
    else
      render json: @card_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /card_links/1
  # DELETE /card_links/1.json
  def destroy
    @card_link.destroy

    head :no_content
  end

  private

  def set_card_link
    @card_link = CardLink.find(params[:id])
  end

  def card_link_params
    params.require(:card_link).permit(:deck_id, :card_id)
  end
end
