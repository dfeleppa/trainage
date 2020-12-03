class Workout < ApplicationRecord
    belongs_to :user
    belongs to :coach, through: :user
    has_many :workouts

    validates :name, :workout, presence:true
    
end
