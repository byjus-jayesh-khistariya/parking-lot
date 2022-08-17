module Api
    class ParkingController < ApplicationController
        skip_before_action :verify_authenticity_token
        def create
            spot=Spot.find_by(is_available:true)
            if (spot)
                parking=Parking.new(param)
                if parking.save and spot.update(is_available:0 ,parking_id:parking.id)
                    
                    render json:{status:'SUCCESS',message:'parking details saved',data:parking,spot_number:spot.spot_number},status: :ok
                else
                    render json:{status:'ERROR',message:'parking details not saved',data:spot.errors,spot_number:0},status: :unprocessable_entity
                end
            else
                render json:{status:'ERROR',message:'Parking Full',spot_number:-1},status: :ok
            end

        end
        private

        def param
            params.permit(:phone_number, :veahicle_number, :veahicle_type)
        end
    end
end