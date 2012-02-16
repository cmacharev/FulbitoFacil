class SessionsController < ApplicationController
	skip_before_filter :authorize
	
  def new
  end

  def create
	if user = User.authenticate(params[:name], params[:password])
		session[:user_id] = user.id
		redirect_to inicio_url
	else
		redirect_to login_url, :alert => "Usuario o Password Invalido"
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to inicio_url
	# redirect_to store_url, :notice => "Logged out"
  end
end
