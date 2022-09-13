class User < ApplicationRecord

    has_many :reservations
    has_many :flights, through: 'reservatiions'

    # # Add secure password command
    has_secure_password
end
