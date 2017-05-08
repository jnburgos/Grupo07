class RemoveShowFromShowSubscriptions < ActiveRecord::Migration[5.0]
  def change
  	remove_column :show_subscriptions, :show, :string
  	remove_column :show_subscriptions, :user, :string
  end
end
