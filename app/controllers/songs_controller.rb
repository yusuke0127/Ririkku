class SongsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :song_list]


  def index
    @songs = policy_scope(Song)
  end

  def show
    @song = Song.find(params[:id])
    authorize @song
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
    authorize @song
  end

  def create
    @song = Song.new(song_params)
    @artist = Artist.find(params[:artist_id])
    @song.artist = @artist
    authorize @song
    if @song.save!
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def song_list
    @songs = policy_scope(Song)
    authorize @songs
  end

  private

  def song_params
    params.require(:song).permit(:en_title, :jp_title, :en_lyric, :jp_lyric, :genre, :composer, :release)
  end
end
