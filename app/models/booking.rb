class Booking < ApplicationRecord
    belongs_to :users, optional: true
    # validates :name, presence: true, length: { minimum: 6, maximum: 100 }
    # validates :movie_name, presence: true, length: { minimum: 1, maximum: 15 }
    # validates :phone, presence: true, length: { minimum: 10, maximum: 10 }
    # validates :no_of_tickets, presence: true, length: { minimum: 10, maximum: 300 }

end
