class User < ApplicationRecord
  # validates :name, presence: true
  # validates :email, uniqueness: true
  # validates :password, length: { in: 6..20 }
  # has_secure_password
  has_many :schedules
  has_many :habits, through: :schedules
end
