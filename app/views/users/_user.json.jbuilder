json.extract! user, :id, :name, :salary, :created_at, :updated_at
json.url user_url(user, format: :json)
