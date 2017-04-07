class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  # for my try
  # def new2
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)

    # it is dangerous
    # redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    # no need for cocktail_id and cocktail because cocktail is already in the DB
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    # why is this cocktail_id?
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
