class ShowsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_show, only: %i[ show edit update  ]
    before_action :is_currect_user_owner?
    def new 
        @show = Show.new
    end

    def index 
        @shows = Show.all
    end

    def edit 
    end

    def show
    end

    def create 
        @show = Show.new(show_params)
        respond_to do |format|
            if @show.save?
                format.html {redirect_to shows_url(@show),notice:"Show created Successfully"}
                flash[:alert] = "Created Successfully"
            else  
                format.html(render :new, status: :unprocessable_entity)
            end
        end
    end

    def update 
        respond_to do |format|
            if @show.update(edit_show_params)
                format.html{redirect_to shows_url(@show),notice: "Show updated Successfully"}
            else 
                format.html{render :edit,status: :unprocessable_entity}
            end
        end
    end

    private 
    def set_show
        @show = Show.find(params[:id])
    end

    def is_currect_user_owner?
        unless current_user.is_owner?
            redirect_to forbiddenAccess_path
        end
    end

    def show_params
        params.require(:show).permit(:name,:time,:runtime,:about,:gener,:theater_id,:language_id,:image)
    end

    def edit_show_params 
        params.require(:show).permit(:name,:time,:runtime,:about,:gener,:theater_id,:language_id,:image)
    end


end
