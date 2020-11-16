class HomeController < ApplicationController
  skip_before_action :basic_authenticate, except: :login
  before_action :weather_data
  def top
  end

  def login
    flash.now[:notice] = session[:username]
    render "top"
  end

  def logout
    flash.now[:notice] = session[:username]+"からログアウトしました"
    session[:username]=""
    session[:teacher]=false
    session[:admin]=false
    session[:club_name_id]=0
    render "top",status: 401
  end

  private
  def weather_data
    @today = Date.today
    week = ['日', '月', '火', '水', '木', '金', '土']
    @yobi = week[@today.wday]
    start_time = DateTime.new(@today.year, @today.month, @today.day-1, 0, 0, 0)
    end_time = DateTime.new(@today.year, @today.month, @today.day, 23, 59, 59)
    @weather = Weather.where("date between ? and ?", start_time, end_time).order(:date).limit(6)
  end

end
