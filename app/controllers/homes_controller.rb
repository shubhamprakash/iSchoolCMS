class HomesController < ApplicationController
  def index
  	render :layout => false
  	# if user.signed_in?
  	# 	redirect_to informations_contactus_path
  	# end
  end
end
