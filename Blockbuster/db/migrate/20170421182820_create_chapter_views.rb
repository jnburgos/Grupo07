class CreateChapterViews < ActiveRecord::Migration[5.0]
  def change
    create_table :chapter_views do |t|
      t.refferences :user
      t.string :chapter
      t.string :review

      t.timestamps
    end
  end
end
