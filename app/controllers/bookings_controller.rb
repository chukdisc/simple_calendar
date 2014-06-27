class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    Booking.create(booking_params)
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(
      :name,
      :email,
      :phone,
      :band_members)
  end

end
