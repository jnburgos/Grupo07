class AddColumnToActorshow < ActiveRecord::Migration[5.0]
  def change
  	add_column :actorshows, :actor_id, :integer
    add_column :actorshows, :show_id, :integer
  end
end
