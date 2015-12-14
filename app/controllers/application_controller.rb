class ApplicationController < ActionController::Base


  protect_from_forgery with: :exception
  # before_action :authorize
  protected
  def authorize 
    unless Patron.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Failure "
    end
  end
end
