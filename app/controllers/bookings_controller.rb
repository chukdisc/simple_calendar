class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @days = TimeSlot.available.group_by(&:weekday)
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
      :band_members,
    )
  end

end
