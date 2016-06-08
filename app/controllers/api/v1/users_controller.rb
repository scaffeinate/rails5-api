module Api::V1
  class UsersController < ApplicationController
    def show
      @user = User.find_by(id: params[:id])
      render json: @user, serializer: Api::V1::UserSerializer
    end
  end
end
