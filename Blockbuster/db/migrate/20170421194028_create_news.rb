class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :show
      t.string :actor
      t.dateTime :date
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
