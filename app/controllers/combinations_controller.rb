class CombinationsController < ApplicationController
  before_action :set_combination, only: [:show, :update, :destroy]

  # GET /combinations
  # GET /combinations.json
  def index
    @combinations = Combination.all

    render json: @combinations
  end

  # GET /combinations/1
  # GET /combinations/1.json
  def show
    render json: @combination
  end

  # POST /combinations
  # POST /combinations.json
  def create
    @combination = Combination.new(combination_params)

    if @combination.save
      render json: @combination, status: :created, location: @combination
    else
      render json: @combination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /combinations/1
  # PATCH/PUT /combinations/1.json
  def update
    @combination = Combination.find(params[:id])

    if @combination.update(combination_params)
      head :no_content
    else
      render json: @combination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /combinations/1
  # DELETE /combinations/1.json
  def destroy
    @combination.destroy

    head :no_content
  end

  private

    def set_combination
      @combination = Combination.find(params[:id])
    end

    def combination_params
      params.require(:combination).permit(:first_card_class, :second_card_class, :result)
    end
end
