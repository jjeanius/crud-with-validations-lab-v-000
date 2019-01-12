class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    redirect_to songs_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
  #  @song.update(post_params)
  #  redirect_to songs_path(@song)
  end

  def delete
    #Song.find(params[:id]).destroy
    #redirect_to songs_url
  end

end
##