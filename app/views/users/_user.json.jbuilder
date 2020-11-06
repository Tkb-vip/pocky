json.extract! user, :id, :username, :password, :club_name_id, :teacher, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
