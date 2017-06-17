class RemoveChapterFromChapterViews < ActiveRecord::Migration[5.0]
  def change
    remove_column :chapter_views, :chapter, :integer
  end
end
