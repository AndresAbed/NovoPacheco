class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :besides

      t.timestamps null: false
    end
  end
end
