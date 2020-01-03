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

class UserSerializer < ActiveModel::Serializer
  attributes :email

  has_one :tokens, if: :with_auth_tokens?

  def with_auth_tokens?
    instance_options[:with_auth_tokens]
  end
end
