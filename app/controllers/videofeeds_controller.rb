class VideofeedsController < ApplicationController
  before_action :set_videofeed, only: %i[ show edit update destroy ]

  # GET /videofeeds or /videofeeds.json
  def index
    @videofeeds = Videofeed.all

  end

  # GET /videofeeds/1 or /videofeeds/1.json
  def show
  end

  # GET /videofeeds/new
  def new
    @videofeed = Videofeed.new
  end

  # GET /videofeeds/1/edit
  def edit
  end

  # POST /videofeeds or /videofeeds.json
  def create
    @videofeed = Videofeed.new(videofeed_params)

    respond_to do |format|
      if @videofeed.save
        format.html { redirect_to @videofeed, notice: "Videofeed was successfully created." }
        format.json { render :show, status: :created, location: @videofeed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @videofeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videofeeds/1 or /videofeeds/1.json
  def update
    respond_to do |format|
      if @videofeed.update(videofeed_params)
        format.html { redirect_to @videofeed, notice: "Videofeed was successfully updated." }
        format.json { render :show, status: :ok, location: @videofeed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @videofeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videofeeds/1 or /videofeeds/1.json
  def destroy
    @videofeed.destroy
    respond_to do |format|
      format.html { redirect_to videofeeds_url, notice: "Videofeed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videofeed
      @videofeed = Videofeed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def videofeed_params
      params.require(:videofeed).permit(:video, :index)
    end
end
