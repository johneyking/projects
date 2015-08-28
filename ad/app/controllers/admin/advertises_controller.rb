class Admin::AdvertisesController < ApplicationController
	before_action :authenticate
    
    def index
		
	end
    def selected
		if params[:keyword]
			@advertises = Advertise.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
		else 
			@advertises = Advertise.all
		end
	end
 def show
     		advertises = Advertise.find(params[:id])
		@advertises = advertises.advertiser
		 
	end
		
    # ....

    protected

    def authenticate
       authenticate_or_request_with_http_basic do |user_name, password|
           user_name == "username" && password == "password"
       end
    end
end


