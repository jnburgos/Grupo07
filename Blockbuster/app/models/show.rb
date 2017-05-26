class Show < ApplicationRecord
  has_many :news
  has_many :show_reviews
  has_many :seasons
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :actorshows
  has_many :actors, through: :actorshows

  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
  end

end
