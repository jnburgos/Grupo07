class CreateJoinTableSubscriptions < ActiveRecord::Migration[5.0]
  def change
  	create_join_table :users, :shows, table_name: :subscriptions
  end
end
