class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    get_booking
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "La réservation a été créée avec succès."
    else
      render :new
    end
  end



  def update
    @booking.update(booking_params)
    end

    def destroy
      @booking = Booking.find(params[:id]).destroy
    end


  private

  def get_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
