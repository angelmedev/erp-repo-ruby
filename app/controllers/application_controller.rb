class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  # helper_method :current_user
  
  # def log_in(user)
  #   session[:user_id] = user.id
  # end
  
  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end
  
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # def require_login
  #   unless current_user
  #     flash[:danger] = "Please log in"
  #     redirect_to login_url
  #   end
  # end
end