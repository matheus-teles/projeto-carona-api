class Ride < ApplicationRecord
    belongs_to :driver, class_name: "User", foreign_key: :driver_id
    has_many :passengers_users, class_name: "Passenger", foreign_key: :ride_id
    has_many :passengers, through: :passengers_users, source: :user
end