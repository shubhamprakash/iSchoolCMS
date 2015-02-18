class AdminsController < ApplicationController

  def index 
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.xls { send_data @users.to_csv }
    end
  end
end
