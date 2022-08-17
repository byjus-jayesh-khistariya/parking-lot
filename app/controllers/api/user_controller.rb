module Api
    class UserController < ApplicationController
        skip_before_action :verify_authenticity_token
        def create
            user = User.new(param)

            if user.save
                render json:{status:'SUCCESS',message:'User saved',data:user },status: :ok
            else
                render json:{status:'ERROR',message:'User not saved',data:user.errors },status: :unprocessable_entity
            end
        end

        private

        def param
            params.permit(:name, :phone_number)
        end
    end
end