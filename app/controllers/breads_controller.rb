class BreadsController < ApplicationController
  before_action :set_bread, only: %i[ show update destroy ]

  # GET /breads
  def index
    @breads = Bread.all

    render json: @breads
  end

  # GET /breads/1
  def show
    render json: @bread
  end

  # POST /breads
  def create
    @bread = Bread.new(bread_params)

    if @bread.save
      render json: @bread, status: :created, location: @bread
    else
      render json: @bread.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breads/1
  def update
    if @bread.update(bread_params)
      render json: @bread
    else
      render json: @bread.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breads/1
  def destroy
    @bread.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bread
      @bread = Bread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bread_params
      params.require(:bread).permit(:title, :description)
    end
end
