class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@cocktails) do |cocktail, marker|
      marker.lat cocktail.latitude
      marker.lng cocktail.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    # @alert_message = "You are viewing #{@cocktail.name}"
    @cocktail_coodinates = { lat: @cocktail.latitude, lng: @cocktail.longitude }
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
