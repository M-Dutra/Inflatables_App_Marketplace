class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[dashboard]
  def home
  end

  def dashboard
    @inflatables = Inflatable.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
