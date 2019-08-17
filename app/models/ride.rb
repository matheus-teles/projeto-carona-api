class Ride < ApplicationRecord
    belongs_to :driver, class_name: "User", foreign_key: :driver_id
    has_many :passengers_users, class_name: "Passenger", foreign_key: :ride_id
    has_many :passengers, through: :passengers_users, source: :user

    enum status: { 
        created: 0,
        started: 1,
        ended: 2
    }

    scope :created, -> { where(status: 0) }
    scope :started, -> { where(status: 1) }
    scope :ended, -> { where(status: 2) }
    scope :active, -> { where(status: [0, 1])}

end