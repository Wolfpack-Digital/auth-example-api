# frozen_string_literal: true

class Api::V1::SessionsController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, only: :create

  def index
    render json: current_user
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if user&.authenticate(params[:password])
      render json: user, with_auth_tokens: true
    else
      render_error_message(I18n.t('errors.login'))
    end
  end

  def destroy
    doorkeeper_token.revoke

    head :ok
  end
end
