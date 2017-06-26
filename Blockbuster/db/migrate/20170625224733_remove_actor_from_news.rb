class RemoveActorFromNews < ActiveRecord::Migration[5.0]
  def change
  	remove_column :news, :actor, :string
  end
end
