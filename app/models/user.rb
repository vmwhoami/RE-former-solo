# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {minimum:3, maximum:20}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {minimum:3, maximum:20}
  validates :password, presence: true, length: {minimum:3, maximum:20}
end
