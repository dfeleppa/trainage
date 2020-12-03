class Coach < ApplicationRecord
    has_many :athletes
    has_many :workouts, through: :athlete
    has_secure_password
    validates :email, presence: true, uniqueness: true


    def self.from_omniauth(auth)
          where(email: auth.info.email).first_or_initialize do |coach|
            user.email = auth.info.email
            user.password = SecureRandom.hex
        end
    end
end
