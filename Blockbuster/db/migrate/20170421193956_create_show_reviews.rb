class CreateShowReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :show_reviews do |t|
      t.string :show
      t.string :user
      t.string :review

      t.timestamps
    end
  end
end
