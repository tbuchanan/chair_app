class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  # redirect to dashboard
	def after_sign_in_path_for(resource)
		dashboard_path
	end

	def after_sign_up_path_for(resource)
		dashboard_path
	end


  protect_from_forgery with: :exception
end

