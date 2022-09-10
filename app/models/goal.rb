class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :habit
  has_many :tasks
  has_many :events
  has_many :journals
end
