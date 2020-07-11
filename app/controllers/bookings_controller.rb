class BookingsController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.character = @booking
    if @booking.save
      redirect_to character_path(@character)
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to_character_path(@booking.character)
  end

  private
  def booking_params
    params.require(:booking).permit(:date)
  end
end
