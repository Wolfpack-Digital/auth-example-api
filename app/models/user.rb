# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  created_at      :datetime         not null
#  email           :string
#  id              :bigint           not null, primary key
#  password_digest :string
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ApplicationRecord
  has_secure_password

  before_save { email.downcase! }

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password, length: { minimum: 6 }, allow_nil: true

  def tokens
    access_token = Doorkeeper::AccessToken.create!(
      resource_owner_id: id,
      expires_in: Doorkeeper.configuration.access_token_expires_in,
      use_refresh_token: Doorkeeper.configuration.refresh_token_enabled?
    )
    Doorkeeper::OAuth::TokenResponse.new(access_token).body
  end
end
