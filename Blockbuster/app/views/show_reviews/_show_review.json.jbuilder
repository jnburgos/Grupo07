json.extract! show_review, :id, :show, :user, :review, :created_at, :updated_at
json.url show_review_url(show_review, format: :json)
