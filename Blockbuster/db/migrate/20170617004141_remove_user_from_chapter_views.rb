class RemoveUserFromChapterViews < ActiveRecord::Migration[5.0]
  def change
    remove_column :chapter_views, :user, :string
  end
end
