class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.date :date
      t.integer :time
      t.integer :seats_available
      t.text :comments
      t.string :start_location
      t.string :end_location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
