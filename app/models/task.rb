class Task < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  
  has_many :events
end
