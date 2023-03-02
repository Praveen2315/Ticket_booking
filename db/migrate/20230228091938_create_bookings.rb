class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :no_of_tickets

      t.timestamps
    end
  end
end
