# frozen_string_literal: true

class AuthToken < ApplicationRecord
  belongs_to :user

  validates :value, presence: true
end
