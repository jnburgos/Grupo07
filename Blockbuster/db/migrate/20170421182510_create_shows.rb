class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.int :rating
      t.int :rating_n
      t.bool :permission
      t.string :country
      t.string :lenguage
      t.string :subtitles
      t.string :actors
      t.int :numberOfSeasons

      t.timestamps
    end
  end
end
