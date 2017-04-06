class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
  end

  def show
  end
end
