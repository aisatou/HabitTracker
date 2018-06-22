class User < ApplicationRecord
  # validates :name, presence: true, length: { in: 6..20 }
  # validates :email, uniqueness: true, length: { in: 6..20 }
  # validates :password, length: { in: 6..20 }
  # has_secure_password
  has_many :schedules
  has_many :habits, through: :schedules
end
