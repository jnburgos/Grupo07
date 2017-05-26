class LinkActorShow < ActiveRecord::Migration[5.0]
  def change
  	drop_table :actorshows
  	create_table :actorshows do |t|
  		t.belongs_to :actor
  		t.belongs_to :show
    end
  end
end
