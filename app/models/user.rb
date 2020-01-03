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
end
