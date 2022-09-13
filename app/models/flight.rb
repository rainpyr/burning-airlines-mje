class Flight < ApplicationRecord

    belongs_to :plane, optional: true
    has_many :reservations
    has_many :users, through: 'reservatiions'

end
