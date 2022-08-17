class Spot < ApplicationRecord
    validates :spot_number, presence: true
    validates :parking_id, presence: false
    validates :is_available, presence: false


    def changespot(id,is_available,parking_id)
        spot=Spot.find(id)
        spot.update(is_available:false,parking_id:parking_id)
    end


end
