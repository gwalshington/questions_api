class AnimalPicturesController < ApplicationController
  before_action :set_animal_picture, only: [:show, :update, :destroy]

  # GET /animal_pictures
  def index
    @animal_pictures = AnimalPicture.order("RANDOM()").limit(1)

    render json: @animal_pictures
  end

  # GET /animal_pictures/1
  def show
    render json: @animal_picture
  end

  # POST /animal_pictures
  def create
    @animal_picture = AnimalPicture.new(animal_picture_params)

    if @animal_picture.save
      render json: @animal_picture, status: :created, location: @animal_picture
    else
      render json: @animal_picture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animal_pictures/1
  def update
    if @animal_picture.update(animal_picture_params)
      render json: @animal_picture
    else
      render json: @animal_picture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animal_pictures/1
  def destroy
    @animal_picture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_picture
      @animal_picture = AnimalPicture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_picture_params
      params.require(:animal_picture).permit(:picture, :url)
    end
end
