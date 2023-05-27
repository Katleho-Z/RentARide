class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def create

    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:success] = 'Reservation was successfully updated.'
      redirect_to @booking
    else
      render :edit
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :rental_date, :return_date, :pickup_location, :return_location, :total_cost)
  end
end
