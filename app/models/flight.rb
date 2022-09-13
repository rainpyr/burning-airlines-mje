class Flight < ApplicationRecord

    belongs_to :plane, optional: true
end
