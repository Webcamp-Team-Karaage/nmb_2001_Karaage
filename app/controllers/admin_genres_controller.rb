class AdminGenresController < ApplicationController
    def index
        
        
        @genres = Genre.all   
    end
    def create
        @genre = Genre.new(params_genre)
        @genre.save

        redirect_to admins_path
        
    end
    def edit
        @genre = Genre.find(params[:id])

    end
    def update
        genre = Genre.find(params[:id])
        genre.update(params_genre)
        redirect_to admins_path
    end

    private 

    def params_genre
        params.require(:genre).permit(:name, :status)

    end
end
