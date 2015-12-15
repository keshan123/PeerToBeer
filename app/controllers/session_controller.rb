class SessionController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    patron = Patron.find_by(name: params[:name])
    if patron and patron.authenticate(params[:password])
        session[:patron_id] = patron.id
        redirect_to admin_url
    else
      redirect_to login_url, alert:"Invalid Username or Password"
    end
  end

  def destroy
    session[:patron_id] = nil
    redirect_to login_url, alert:"Successful Logout"
  end
end
