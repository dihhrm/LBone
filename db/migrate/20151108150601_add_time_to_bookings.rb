class AddTimeToBookings < ActiveRecord::Migration
  def change
  	add_column :bookings, :booking_time, :time
  end
end
