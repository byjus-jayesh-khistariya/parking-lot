module Api
    class SpotController < ApplicationController
        skip_before_action :verify_authenticity_token
        def create
            spot = Spot.new(param)

            if spot.save
                render json:{status:'SUCCESS',message:'Spot created',data:spot },status: :ok
            else
                render json:{status:'ERROR',message:'Spot not created',data:spot.errors },status: :unprocessable_entity
            end
        end

        private

        def param
            params.permit(:spot_number, :parking_id,:is_available)
        end
    end
end