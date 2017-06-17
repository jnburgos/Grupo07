class AddChapterIdToChapterViews < ActiveRecord::Migration[5.0]
  def change
    add_column :chapter_views, :chapter_id, :integer
  end
end
