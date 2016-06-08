module Api::V1
  class UsersController < ApplicationController
    def show
      @user = User.find_by(id: params[:id])
      render json: @user
    end
  end
end
