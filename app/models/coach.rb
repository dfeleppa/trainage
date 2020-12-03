class Coach < ApplicationRecord
    has_many :athletes
    has_many :sessions, through: :user
    has_secure_password
    validates :email, presence: true, uniqueness: true
    # has_many :workouts, through: :sessions
end
