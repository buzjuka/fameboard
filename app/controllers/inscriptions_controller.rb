class InscriptionsController < ApplicationController
  before_action :set_inscription, only: [:show, :destroy]
  def index
    @inscriptions=Inscription.all
  end

  def show
  end

  def new
    @inscription = Inscription.new
  end

  def create
    @inscription=Inscription.new(inscription_params)
    if @inscription.save
      redirect_to inscriptions_url
    else
      render action: 'new'
    end
  end

  def destroy
    @inscription.destroy
    return redirect_to inscriptions_url
  end

private

  def set_inscription
    @inscription = Inscription.find(params[:id])
  end

  def inscription_params
    params.require(:inscription).permit(:positive, :name, :description )
  end
end
