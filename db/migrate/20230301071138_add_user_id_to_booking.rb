class AddUserIdToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :user_id, :int
  end
end
