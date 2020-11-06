class HomeController < ApplicationController
  def top
    @today = Date.today
    week = ['日', '月', '火', '水', '木', '金', '土']
    @yobi = week[@today.wday]

    start_time = DateTime.new(@today.year, @today.month, @today.day-1, 0, 0, 0)
    end_time = DateTime.new(@today.year, @today.month, @today.day, 23, 59, 59)
    @weather = Weather.where("date between ? and ?", start_time, end_time).order(:date).limit(6)

  end
end
