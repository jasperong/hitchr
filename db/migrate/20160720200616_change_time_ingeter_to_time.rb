class ChangeTimeIngeterToTime < ActiveRecord::Migration
  def change
    remove_column :rides, :time, :integer

    add_column :rides, :time, :time
  end


end
