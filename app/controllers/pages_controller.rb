class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[dashboard]
  def home
  end

  def dashboard
    @inflatables = Inflatable.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
    @bookings_for_my_inflatables = Booking.where(inflatable: @inflatables)
  end
end
