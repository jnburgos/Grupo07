class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :length
      t.string :season

      t.timestamps
    end
  end
end
