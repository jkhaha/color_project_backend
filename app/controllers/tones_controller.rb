class TonesController < ApplicationController
  before_action :set_tone, only: [:show, :update, :destroy]

  # GET /tones
  def index
    @tones = Tone.all

    render json: @tones
  end

  # GET /tones/1
  def show
    render json: @tone
  end

  # POST /tones
  def create
    @tone = Tone.new(tone_params)

    if @tone.save
      render json: @tone, status: :created, location: @tone
    else
      render json: @tone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tones/1
  def update
    if @tone.update(tone_params)
      render json: @tone
    else
      render json: @tone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tones/1
  def destroy
    @tone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tone
      @tone = Tone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tone_params
      params.require(:tone).permit(:hex_value, :r, :g, :b, :tone_type)
    end
end
