class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :address, :role) }
	end

	def after_sign_in_path_for(resource)
    admins_index_path(resource)
  end

 #  rescue_from Pundit::NotAuthorizedError, with: :permission_denied
 # 	after_filter :verify_authorized, :except => :index
 
	# after_filter :verify_policy_scoped, :only => :index
 
 
	# private
 
	# def permission_denied
	# 	head 403
	# end
end
