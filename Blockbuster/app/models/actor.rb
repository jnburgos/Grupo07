class Actor < ApplicationRecord
  has_many :news
  has_many :actorshows
  has_many :shows, through: :actorshows
end
