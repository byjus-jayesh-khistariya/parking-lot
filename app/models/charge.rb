class Charge < ApplicationRecord
    validates :veahicle_type, presence: true
    validates :amount_per_hour, presence: true
end
