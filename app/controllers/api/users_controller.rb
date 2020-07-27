class Api::UsersController < ApplicationController
  skip_before_action :authenticate, only: [:create]

  #-------------------------Private Methods-------------------------
  private
    def build_resource
      @user = User.new(resource_params)
    end

    def resource
      @user
    end

    def resource_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end