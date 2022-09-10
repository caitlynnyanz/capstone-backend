class Event < ApplicationRecord
  belongs_to :user
  belongs_to :habit, optional: true 
  belongs_to :goal, optional: true 
  belongs_to :task, optional: true 
end
