class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|

      t.string :professor
      t.string :discipline
      t.string :classe
      t.string :students
      t.datetime :schedule

      t.timestamps
    end
  end
end
