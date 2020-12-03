class Athlete < ApplicationRecord
    belongs_to :coach
    has_many :sessions
    has_many :workouts, through: :sessions
    has_secure_password
end
