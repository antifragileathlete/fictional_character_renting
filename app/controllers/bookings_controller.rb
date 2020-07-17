class BookingsController < ApplicationController
  before_action :set_user
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @mycharacters = my_characters
    @mycharacterbookings = Booking.where("character.user_id == current_user.id")
    #@bookings = policy_scope(Booking)
    return [@bookings, @mycharacterbookings, @mycharacters]
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    redirect_to bookings_path
  end

  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "declined"
    @booking.save
    redirect_to bookings_path
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
    @booking.status = "pending"
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
    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_user
    @user = current_user
  end
end

def my_characters
  Character.where(user_id: current_user.id)
end
