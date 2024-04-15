class TheatersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_theater, only: %i[ show edit update  ]
    before_action :is_currect_user_owner?
    def new 
        @theater = Theater.new
    end

    def index 
        @theaters = Theater.all
    end 

    def show
    end

    def edit 

    end

    def create 
        @theater = Theater.new(theater_params)
        @theater.user_id = current_user.id 
        respond_to  do |format|
            if @theater.save 
                format.html {redirect_to theaters_url{@theater},notice:"Theater created Successfully"}
                flash[:alert] = "Created Successfully"
            else 
                format.html {render :new, status: :unprocessable_entity}
            end
        end
    end

    def update 
        respond_to do |format|
            if @theater.update(edit_theater_params)
                format.html { redirect_to theaters_url(@theater), notice: "Theater was successfully updated." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    private 
    def set_theater
        @theater = Theater.find(params[:id])
    end
    def theater_params
        params.require(:theater).permit(:name,:location_id)
    end

    def edit_theater_params
        params.require(:theater).permit(:name,:location_id)
    end

    def is_currect_user_owner? 
        unless current_user.is_owner?
            redirect_to forbiddenAccess_path
        end
    end

end
