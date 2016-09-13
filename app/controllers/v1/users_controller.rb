class V1::UsersController < ApplicationController
	def index
		# use each_serializer for a serialized colleciton
		render json: User.all, each_serializer: V1::UserSerializer
	end

	def create
		@user = User.create(user_params)
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def update
	end

	def destroy
	end
	
	private

		def user_params
			params.require(:user).permit(:name, :password)
		end
end
