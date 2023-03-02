class UsersController < ApplicationController
    def show
      @articles = @user
    end
  
    def index
      @users = User
    end
  
    def new
      @user = User.new
    end
  
    def edit
    end
  
    def update
      if @user.update(user_params)
        flash[:notice] = "Your account information was successfully updated"
        redirect_to @user
      else
        render 'edit'
      end
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Welcome to TicketBooking #{@user.username}, you have successfully signed up"
        redirect_to bookings_path
      else
        render 'new'
      end
    end
  
    def destroy
      @user.destroy
      session[:user_id] = nil if @user == current_user
      redirect_to bookings_path
    end
  
    private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  
    def set_user
      @user = User.find(params[:id])
    end  
 end