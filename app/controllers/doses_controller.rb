class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render 'new'
    end
  end

  def dose_params
    params.require(:dose).permit(:id, :name)
  end

  def destroy
  @dose = Dose.find(params[:id])
  @dose.destroy

  redirect_to cocktail_path
end
end
