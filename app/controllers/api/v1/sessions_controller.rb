class Api::V1::SessionsController < ApplicationController
  # def new
  # end
  
  # def create
  #   @user = User.find_by(email: params[:session][:email].downcase)
  #   if @user && @user.authenticate(params[:session][:password])
  #     # Log the user in and redirect to the user's profile page
  #     log_in @user
  #     # redirect_to user_path(@user)
  #   else
  #     # Render the login form with errors
  #     flash.now[:danger] = 'Invalid email/password combination'
  #     render :new
  #   end
  # end
  
  # def destroy
  #   # Log the user out and redirect to the home page
  #   log_out
  #   redirect_to root_url
  # end
end
