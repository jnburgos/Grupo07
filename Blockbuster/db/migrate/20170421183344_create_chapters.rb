class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.int :length
      t.refferences :season

      t.timestamps
    end
  end
end
