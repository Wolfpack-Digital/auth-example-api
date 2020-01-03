# frozen_string_literal: true

class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, only: :create

  def create
    user = User.create!(user_params)

    render json: user, with_auth_tokens: true
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
