class Movement < ApplicationRecord
    belongs_to :workout

    validates :name, :category, presence:true
    validates_associated :workout

end
