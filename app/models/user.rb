class User < ApplicationRecord
has_secure_password
validates :email, presence: true, uniqueness: true

has_many :habits
has_many :goals
has_many :tasks
has_many :events
has_many :journals

end
