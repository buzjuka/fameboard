class InscriptionsController < ApplicationController
  before_action :set_inscription, only: [:show, :destroy]
  before_action :set_inscriptions, only: [:index, :create, :destroy]
  def index
  end

  def show
  end

  def new
    @inscription = Inscription.new
  end

  def create
    @inscription = Inscription.new(inscription_params)
    if @inscription.save
      render "index_update"
    else
      render "new_errors"
    end
  end

  def destroy
    @inscription.destroy
    return render "index_update"
  end

private

  def set_inscription
    @inscription = Inscription.find(params[:id])
  end

  def set_inscriptions
    @inscriptions=Inscription.all
  end

  def inscription_params
    params.require(:inscription).permit(:positive, :name, :description )
  end
end
