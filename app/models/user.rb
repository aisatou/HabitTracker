class User < ApplicationRecord
  has_many :schedules
  has_many :habits, through: :schedules
end
