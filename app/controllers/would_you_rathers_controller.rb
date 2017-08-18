class WouldYouRathersController < ApplicationController
  before_action :set_would_you_rather, only: [:show, :update, :destroy]

  # GET /would_you_rathers
  def index
    @would_you_rathers = WouldYouRather.order("RANDOM()").limit(1)

    render json: @would_you_rathers
  end

  # GET /would_you_rathers/1
  def show
    render json: @would_you_rather
  end

  # POST /would_you_rathers
  def create
    @would_you_rather = WouldYouRather.new(would_you_rather_params)

    if @would_you_rather.save
      render json: @would_you_rather, status: :created, location: @would_you_rather
    else
      render json: @would_you_rather.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /would_you_rathers/1
  def update
    if @would_you_rather.update(would_you_rather_params)
      render json: @would_you_rather
    else
      render json: @would_you_rather.errors, status: :unprocessable_entity
    end
  end

  # DELETE /would_you_rathers/1
  def destroy
    @would_you_rather.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_would_you_rather
      @would_you_rather = WouldYouRather.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def would_you_rather_params
      params.require(:would_you_rather).permit(:question)
    end
end
