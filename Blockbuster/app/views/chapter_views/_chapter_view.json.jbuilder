json.extract! chapter_view, :id, :user, :chapter, :review, :created_at, :updated_at
json.url chapter_view_url(chapter_view, format: :json)
