class CreateShowSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :show_subscriptions do |t|
      t.string :show
      t.string :user

      t.timestamps
    end
  end
end
