class AddHoursToDetails < ActiveRecord::Migration
  def change
    add_column :details, :open_hour, :time
    add_column :details, :close_hour, :time
  end
end
