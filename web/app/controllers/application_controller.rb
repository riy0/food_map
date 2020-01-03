class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "Please Log in"
      redirect_to("/login")
    end
  end

  def logged_in
    if @current_user
      flash[:notice] = "Already Logged in"
      redirect_to("/posts/index")
    end
  end
end
