class SelectPlacesController < ApplicationController
  before_action :set_select_place, only: [:show, :edit, :update, :destroy]

  # GET /select_places
  # GET /select_places.json
  def index
    @select_places = SelectPlace.all
  end

  # GET /select_places/1
  # GET /select_places/1.json
  def show
  end

  # GET /select_places/new
  def new
    @select_place = SelectPlace.new
  end

  # GET /select_places/1/edit
  def edit
  end

  # POST /select_places
  # POST /select_places.json
  def create
    @select_place = SelectPlace.new(select_place_params)

    respond_to do |format|
      if @select_place.save
        format.html { redirect_to @select_place, notice: 'Select place was successfully created.' }
        format.json { render :show, status: :created, location: @select_place }
      else
        format.html { render :new }
        format.json { render json: @select_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /select_places/1
  # PATCH/PUT /select_places/1.json
  def update
    respond_to do |format|
      if @select_place.update(select_place_params)
        format.html { redirect_to @select_place, notice: 'Select place was successfully updated.' }
        format.json { render :show, status: :ok, location: @select_place }
      else
        format.html { render :edit }
        format.json { render json: @select_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /select_places/1
  # DELETE /select_places/1.json
  def destroy
    @select_place.destroy
    respond_to do |format|
      format.html { redirect_to select_places_url, notice: 'Select place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_select_place
      @select_place = SelectPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def select_place_params
      params.require(:select_place).permit(:id, :club_id, :place_id)
    end
end
