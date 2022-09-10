class Habit < ApplicationRecord
  belongs_to :user
  has_many :goals
  has_many :events
  has_many :journals
end
