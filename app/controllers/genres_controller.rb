class GenresController < ApplicationController
    def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
	  @genre = Genre.new(item_params)
	  @genre.save
	  redirect_to genre_path(@genre)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(item_params)
	  redirect_to genre_path(@genre)
	end

	private

    def item_params
        params.require(:genre).permit(:name)
    end
end