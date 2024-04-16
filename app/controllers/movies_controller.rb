class MoviesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_movie, only: %i[ show edit update  ]
    before_action :is_currect_user_owner?
    def new 
        @movie = Movie.new
    end

    def index 
        @movies = Movie.all
    end 

    def show
    end

    def edit 

    end

    def create 
        @movie = Movie.new(movie_params)
        respond_to  do |format|
            if @movie.save 
                format.html {redirect_to movies_url{@movie},notice:"Movie created Successfully"}
                flash[:alert] = "Created Successfully"
            else 
                format.html {render :new, status: :unprocessable_entity}
            end
        end
    end

    def update 
        respond_to do |format|
            if @movie.update(edit_movie_params)
                format.html { redirect_to movies_url(@movie), notice: "Movie was successfully updated." }
            else
                format.html { render :edit, status: :unprocessable_entity }
            end
        end
    end

    private 
    def set_movie
        @movie = Movie.find(params[:id])
    end
    def movie_params
        params.require(:movie).permit(:name,:about,:genre,:runtime,:picture)
    end

    def edit_movie_params
        params.require(:movie).permit(:name,:about,:genre,:runtime,:picture)
    end

    def is_currect_user_owner? 
        unless current_user.is_owner?
            redirect_to forbiddenAccess_path
        end
    end
end

