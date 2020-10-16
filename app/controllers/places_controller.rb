class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all
  end

  # GET /places/1
  # GET /places/1.json
  def show
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)

  if params[:place][:place_image].present?
    @place.place_image = DateTime.now.strftime('%Y%m%d%H%M%S') + params[:place][:place_image].original_filename
    #\assets\images\places\
    File.open( "app/assets/images/places/#{@place.place_image}", 'w+b') { |f|
     f.write(params[:place][:place_image].read)
   }
  end


    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update

    if params[:place][:place_image].present?
      @place.place_image = DateTime.now.strftime('%Y%m%d%H%M%S') + params[:place][:place_image].original_filename
      #\assets\images\places\
      File.open( "app/assets/images/places/#{@place.place_image}", 'w+b') { |f|
       f.write(params[:place][:place_image].read)
     }
    end

    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name, :place_image, :memo, :sort)
    end
end
