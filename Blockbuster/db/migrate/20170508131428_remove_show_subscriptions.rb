class RemoveShowSubscriptions < ActiveRecord::Migration[5.0]
  def change
  	drop_table :show_subscriptions
  end
end
