json.extract! user, :id, :role, :password, :email, :firstName, :lastName, :facebook, :created_at, :updated_at
json.url user_url(user, format: :json)
