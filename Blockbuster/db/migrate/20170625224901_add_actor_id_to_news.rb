class AddActorIdToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :actor_id, :integer
  end
end
