class BookingsController < ApplicationController
  before_action :set_bookings, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @carpet = Carpet.find(params[:carpet_id])
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

  def destroy
    @booking.destroy
    redirect_to dashboards_show_path, status: :see_other
  end

  def update
    @booking.update(booking_params)
    redirect_to dashboards_show_path
  end

  private

  def booking_params
    params.require(:booking).permit(:booked_until, :booked_from, :rating)
  end

  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
