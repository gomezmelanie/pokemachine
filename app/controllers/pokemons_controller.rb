class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR category ILIKE :query"
      @pokemons = @pokemons.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @user = @pokemon.user
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    if @pokemon.save!
      redirect_to pokemons_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to pokemons_path, status: :see_other
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :address, :level, :category, :user_id, :price)
  end
end
