class Parking < ApplicationRecord
    validates :phone_number, presence: true
    validates :veahicle_number, presence: true
    validates :veahicle_type, presence: true
end
