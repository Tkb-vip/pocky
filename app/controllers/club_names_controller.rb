class ClubNamesController < ApplicationController
  before_action :set_club_name, only: [:show, :edit, :update, :destroy]

  # GET /club_names
  # GET /club_names.json
  def index
    @club_names = ClubName.all
  end

  # GET /club_names/1
  # GET /club_names/1.json
  def show
  end

  # GET /club_names/new
  def new
    @club_name = ClubName.new
  end

  # GET /club_names/1/edit
  def edit
  end

  # POST /club_names
  # POST /club_names.json
  def create
    @club_name = ClubName.new(club_name_params)

    respond_to do |format|
      if @club_name.save
        format.html { redirect_to @club_name, notice: 'Club name was successfully created.' }
        format.json { render :show, status: :created, location: @club_name }
      else
        format.html { render :new }
        format.json { render json: @club_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_names/1
  # PATCH/PUT /club_names/1.json
  def update
    respond_to do |format|
      if @club_name.update(club_name_params)
        format.html { redirect_to @club_name, notice: 'Club name was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_name }
      else
        format.html { render :edit }
        format.json { render json: @club_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_names/1
  # DELETE /club_names/1.json
  def destroy
    @club_name.destroy
    respond_to do |format|
      format.html { redirect_to club_names_url, notice: 'Club name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_name
      @club_name = ClubName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_name_params
      params.require(:club_name).permit(:name, :sort)
    end
end
