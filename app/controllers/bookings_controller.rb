class BookingsController < ApplicationController
  before_action :set_inflatable, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.inflatable = @booking
    @booking.save
    redirect to inflatable_path(@inflatable)
  end

  private

  def set_inflatable
    @inflatable = Inflatable.find(params[:inflatable_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
