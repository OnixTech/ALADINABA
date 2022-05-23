class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to dashboards_path
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:booked_until, :booked_from, :rating, :carpet_id, :user_id)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
