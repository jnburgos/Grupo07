class Show < ApplicationRecord
  has_many :news
  has_many :show_reviews
  has_many :seasons
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
