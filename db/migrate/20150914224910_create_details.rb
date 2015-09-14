class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.time :hour
      t.string :web
      t.string :facebook
      t.string :location
      t.integer :brand_id

      t.timestamps null: false
    end
  end
end
