class Journal < ApplicationRecord
  belongs_to :user
  belongs_to :habit
  belongs_to :goal
end
