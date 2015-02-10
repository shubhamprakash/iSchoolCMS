class HomesController < ApplicationController
  def index
  	render :layout => "homepage"
  	# if user.signed_in?
  	# 	redirect_to informations_contactus_path
  	# end
  end
end
