class RemoveShowFromNews < ActiveRecord::Migration[5.0]
  def change
  	remove_column :news, :show, :string
  end
end
