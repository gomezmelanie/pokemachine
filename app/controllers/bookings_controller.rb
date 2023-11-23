class BookingsController < ApplicationController
  def index
    @bookings = booking.all
  end

  def show
    @booking = booking.find(params(:id))
    @user = User.find(@booking.user.id)
    @pokemon = Pokemon.find(@booking.pokemon.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    raise
  end

end
