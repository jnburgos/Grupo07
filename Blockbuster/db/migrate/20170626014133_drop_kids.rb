class DropKids < ActiveRecord::Migration[5.0]
  def change
  	drop_table :kids do |t|
  		t.string :name
  		t.integer :parent_id
  	end
  end
end
