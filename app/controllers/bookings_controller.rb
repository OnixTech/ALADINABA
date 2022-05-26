class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @carpet = Carpet.find(params[:carpet_id])
    @carpet_bookings = []
    @carpet.bookings.each do |booking|
      @carpet_bookings << {from: booking.booked_from, to: booking.booked_until}
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @carpet = Carpet.find(params[:carpet_id])
    @booking.carpet = @carpet
     if @booking.save
      redirect_to dashboards_show_path
     else
      render :new
     end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:booked_until, :booked_from, :rating)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
