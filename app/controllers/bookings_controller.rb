class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end  

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.users
      if @booking.save
        flash[:notice] = "booking was created successfully."
        redirect_to @booking
      else
        render :new
      end
    end

     def edit
      @booking = Booking.find(params[:id])
     end

    def update
      @booking = Booking.find(params[:id])
      if @booking.update(booking_params)
          flash[:notice] = "booking was updated successfully."
          redirect_to @booking
      else
          render 'edit'
      end
    end
  
    def show
      @booking = Booking.find(params[:id])
    end
    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to bookings_path
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:name, :movie_name, :phone, :no_of_tickets, :user_id)
    end
  end
  