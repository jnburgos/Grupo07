class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.float :rating
      t.float :rating_n
      t.boolean :permission
      t.string :country
      t.string :language
      t.string :subtitles
      t.string :actors
      t.integer :numberOfSeasons

      t.timestamps
    end
  end
end
