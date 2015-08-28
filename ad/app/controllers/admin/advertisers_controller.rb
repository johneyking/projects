class Admin::AdvertisersController < ApplicationController
	before_action :authenticate
   def index
		
	end
    def selected
		if params[:keyword].empty?
			 @advertisers = Advertiser.all
		else 
			@advertisers = Advertiser.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
		end

		
		
	end
  def show
        advertisers = Advertiser.find(params[:id])
    @advertisers = advertisers.advertiser
     
  end
    def edit
   		@advertisers = Advertiser.find(params[:id])
	end
    def update
  		@advertisers = Advertiser.find(params[:id])
  		@advertisers.update(advertiser_params)

  		redirect_to :action => :index
	end
   def destroy
  		@advertisers = Advertiser.find(params[:id])
  		@advertisers.destroy

  		 redirect_to :action => :index
	end
    # ....

    protected

    def authenticate
       authenticate_or_request_with_http_basic do |user_name, password|
           user_name == "username" && password == "password"
       end
    end

    private

    def advertiser_params
   params.require(:advertiser).permit(:name, :email, :advertiser_id, :phone, :account, :password, :count)
end
end

