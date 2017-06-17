class AddUserIdToChapterViews < ActiveRecord::Migration[5.0]
  def change
    add_column :chapter_views, :user_id, :integer
  end
end
