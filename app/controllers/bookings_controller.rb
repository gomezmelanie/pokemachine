class BookingsController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(booking_params)
    @booking.pokemon = @pokemon
    @pokemon.user = current_user
    if
      @pokemon.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

 private

  def booking_params
    params.require(:booking).permit(:pokemon_id)
  end
end
