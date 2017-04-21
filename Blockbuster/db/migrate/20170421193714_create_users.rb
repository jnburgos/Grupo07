class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :password
      t.string :email
      t.string :firstName
      t.string :lastName
      t.string :facebook

      t.timestamps
    end
  end
end
