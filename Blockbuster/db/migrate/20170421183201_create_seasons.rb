class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.refferences :show
      t.int :year

      t.timestamps
    end
  end
end
