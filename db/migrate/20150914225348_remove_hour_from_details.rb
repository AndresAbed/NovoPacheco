class RemoveHourFromDetails < ActiveRecord::Migration
  def change
    remove_column :details, :hour, :time
  end
end
