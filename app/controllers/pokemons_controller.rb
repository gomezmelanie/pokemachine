class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(@pokemon)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :address, :level, type:, user_id:, price:)
  end

end
