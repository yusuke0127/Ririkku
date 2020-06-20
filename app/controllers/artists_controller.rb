class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update]

  def index
    @artists = policy_scope(Artist)
  end

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
  end

  def new
    @artist = Artist.new
    authorize @artist
  end

  def create
    @artist = Artist.new(artist_params)
    authorize @artist
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
    authorize @artist
  end

  def update
    @artist = Artist.find(params[:id])
    authorize @artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
