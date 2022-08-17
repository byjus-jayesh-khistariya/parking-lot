class Payment < ApplicationRecord
    validates :parking_id, presence: true
    validates :amount, presence: false
end
