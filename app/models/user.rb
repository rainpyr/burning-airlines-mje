class User < ApplicationRecord

    has_many :reservations
    has_many :flights, through: 'reservations'
    # # Add secure password command
    has_secure_password
end
