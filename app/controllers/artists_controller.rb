class ArtistsController < ApplicationController

  def show
    @artist = Artist.find_by(params[:id])
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to genre_path(@artist)
  end

  def new
  end

  def edit
    @artist = Artist.find_by(params[:id])
  end

  private
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
