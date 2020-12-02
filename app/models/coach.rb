class Coach < ApplicationRecord
    has_many :athletes
    has_many :sessions, through: :user
    # has_many :workouts, through: :sessions
end
