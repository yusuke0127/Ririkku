class SongsController < ApplicationController
  def index
    @songs = policy_scope(Song)
  end

  def show
    @song = Song.find(params[:id])
    authorize @song
  end
end
