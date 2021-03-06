class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]

  # GET /clubs
  # GET /clubs.json
  #１０行目にdate～を追加する
  def index
    kensaku = 0
    if params[:club_name].present?
      kensaku = params[:club_name]
      @club_name = params[:club_name]
    else
      if session[:club_name_id].present?
        kensaku = session[:club_name_id]
        @club_name = session[:club_name_id]
      else
        #ログインしてない場合
      end
    end
  
    @today = Date.today
     if params[:activitiesdate].present?
      @today = params[:activitiesdate].to_date
     end
    week = ['日', '月', '火', '水', '木', '金', '土']
    @yobi = week[@today.wday]
    @tomorrow = @today+1
    @yesterday = @today-1
  
    #start_time = DateTime.new(@today.year, @today.month, @today.day-1, 0, 0, 0)
    #end_time = DateTime.new(@today.year, @today.month, @today.day, 23, 59, 59)
    #@weather = Weather.where("date between ? and ?", start_time, end_time).order(:date).limit(6)
  
    #@clubs = Club.all
   
    @clubs = Club.where(club_name_id: kensaku).order(created_at: :desc)
    #@comments = Comment.where(club_id: 1).order(created_at: :desc)
    @club_find = Club.find_by(club_name_id: kensaku,activitiesdate: @today)
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:id, :activities, :tcheck, :scheck, :tcheck_updated_at, :scheck_updated_at, :place_id, :club_name_id,:activitiesdate)
    end
end
