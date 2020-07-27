# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_one :auth_token, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
end
