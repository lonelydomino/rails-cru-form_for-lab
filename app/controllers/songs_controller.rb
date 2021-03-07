class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def create
        @song = Song.new(item_params)
        @song.save
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(item_params)
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find(params[:id])
    end

    private

    def item_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
