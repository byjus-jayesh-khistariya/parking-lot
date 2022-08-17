module Api
    class PaymentController < ApplicationController
        skip_before_action :verify_authenticity_token
        def create
            payment = Payment.new(parking_id:params[:parking_id])
            payment.save
            parking = Parking.find_by(id:params[:parking_id])
            amount_per_hour=Charge.find_by(veahicle_type:parking.veahicle_type).amount_per_hour
            payment.amount=(payment.created_at-parking.created_at)*amount_per_hour/1.hour
            spot=Spot.find_by(parking_id:params[:parking_id])
            spot.is_available=true
            if payment.save and spot.save
                render json:{status:'SUCCESS',message:'payment updated',data:payment },status: :ok
            else
                render json:{status:'ERROR',message:'payment not saved',data:payment.errors },status: :unprocessable_entity
            end

        end



    end
end