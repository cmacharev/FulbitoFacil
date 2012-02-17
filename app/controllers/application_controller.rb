class ApplicationController < ActionController::Base
	before_filter :authorize
	protect_from_forgery
	helper_method :current_user
	
	helper_method :admin?      
    
	protected    
    def admin?    
			false
    end  
  
	private
    def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
	protected
	def authorize
		unless User.find_by_id(session[:user_id])
		redirect_to login_url, :notice => "por Favor Inicie Sesion"
		end
	end
	
	private
	def current_cart
		Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
	end
end
