namespace :open_weather_api do
    desc 'Requests and save in database'
    task weathers: :environment do

        city_id = Settings.weather.city_id
        open_weather = Api::OpenWeatherMap::Request.new(city_id)

        #リクエスト上限：６０回/min
        response = open_weather.request

        # 削除
        Weather.delete_all
        # ３時間ごとのデータ２日分を保存
        16.times do |i|
            params = Api::OpenWeatherMap::Request.attributes_for(response['list'][i])
            weather = Weather.where(date: params[:date])
            if weather.present?
                weather[0].update!(params)
            else
                Weather.create!(params)
            end
        end

        puts 'completed'
    end
end

