class AddTimeSpentToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :time_spent, :integer
  end
end
