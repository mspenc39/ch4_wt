class MoviesController < ApplicationController
    
    def show
       id = params[:id] # retrieve movie ID from URI route
       @movie =Movie.find(id) # look up movie by unique ID
          #will render app/views/movies/show.html.haml 
    end
    
    def index 
        @movies = Movie.all
    end
    
    def new
        @movie = Movie.new
        # defualt: render 'new' template
    end
    
    # add below all other methods
private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

    
    
end