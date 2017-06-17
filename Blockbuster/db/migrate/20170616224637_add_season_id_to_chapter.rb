class AddSeasonIdToChapter < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :season_id, :integer
  end
end
