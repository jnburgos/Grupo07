class Chapter < ApplicationRecord
  has_many :chapter_views
  belongs_to :season
end
