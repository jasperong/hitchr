class AddSeatsToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :seats, :integer
  end
end
