class SongsController < ApplicationController

    def index
        @songs = Song.all
        # puts @songs
        render json: @songs 
    end

    def show
        song = Song.find(params[:id])
        render json: song
    end

end