class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :passwird
      t.string :email
      t.string :firstName
      t.string :string
      t.string :lastName
      t.string :facebooK
      t.string :string

      t.timestamps
    end
  end
end
