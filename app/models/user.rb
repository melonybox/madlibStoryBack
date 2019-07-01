class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :histories
  has_many :madlibs, through: :histories
end
