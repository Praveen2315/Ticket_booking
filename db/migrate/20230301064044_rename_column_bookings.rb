class RenameColumnBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :email, :movie_name

  end
end
