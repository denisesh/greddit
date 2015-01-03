class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  def authenticate #log_in_only
    if !current_user
      flash[:danger] = "You need to log in to view the page"
      redirect_to root_path 
    end
  end

  def can_modify?(user)
    current_user.id == user.id  	
  end 

  helper_method :current_user, :authenticate, :can_modify?
end
