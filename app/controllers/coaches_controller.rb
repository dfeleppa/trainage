class CoachesController < ApplicationController
    def index
        @coaches = Coach.all
    end 
    
    def new
        @coach = Coach.new
    end

    def create
        @coach = Coach.new(coach_params)
        if @coach.save
            session[:coach_id] = @coach.id
            redirect_to show_path(@coach)
        else
            render :new
        end
    end
    
    def show
        @coach = Coach.find_by(params[:id])
    end

    private

    def coach_params
        params.require(:coach).permit(:email, :password, :first_name, :last_name)
    end



end
