class RemoveActorFromShow < ActiveRecord::Migration[5.0]
  def change
    remove_column :shows, :actors, :string
  end
end
