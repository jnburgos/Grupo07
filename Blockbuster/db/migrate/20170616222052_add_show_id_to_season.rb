class AddShowIdToSeason < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :show_id, :integer
  end
end
