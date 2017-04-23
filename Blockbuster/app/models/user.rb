class User < ApplicationRecord
  has_many :show_subscriptions
  has_many :show_reviews
  has_many :chapter_views
end
