json.extract! weather, :id, :temp_max, :temp_min, :temp_feel, :weather_id, :rainfall, :date, :aquired_at, :created_at, :updated_at
json.url weather_url(weather, format: :json)
