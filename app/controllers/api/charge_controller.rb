module Api
    class ChargeController < ApplicationController
        skip_before_action :verify_authenticity_token
        def create
            charge = Charge.new(param)

            if charge.save
                render json:{status:'SUCCESS',message:'New veahicle type saved',data:charge },status: :ok
            else
                render json:{status:'ERROR',message:'details not saved',data:charge.errors },status: :unprocessable_entity
            end
        end

        private

        def param
            params.permit(:veahicle_type, :amount_per_hour)
        end
    end
end