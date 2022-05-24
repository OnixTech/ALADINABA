class DashboardsController < ApplicationController
  def show
    @carpets = current_user.carpets
    @bookings = current_user.bookings
  end
end
