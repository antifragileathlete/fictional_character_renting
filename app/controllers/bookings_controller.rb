class BookingsController < ApplicationController
  before_action :set_user
  def index
    @bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @character = Character.find(params[:character_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @character = Character.find(params[:character_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.character = @character
    @booking.user_id = current_user.id if current_user
    puts @booking
    if @booking.save
      flash[:success_booking] = ""
      redirect_to character_path(@character)
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to character_path(@booking.character)
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :end_date)
  end

  def set_user
    @user = current_user
  end
end
