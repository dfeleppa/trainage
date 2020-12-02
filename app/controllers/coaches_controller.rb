class CoachesController < ApplicationController
    def index
    end 
    
    def new
        @coach = Coach.new
        render :signup

    end

    def create
    end
end
