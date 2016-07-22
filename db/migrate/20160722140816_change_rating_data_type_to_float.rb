class ChangeRatingDataTypeToFloat < ActiveRecord::Migration
  def change
    remove_column :reviews, :rating, :integer

    add_column :reviews, :rating, :float
  end
end
