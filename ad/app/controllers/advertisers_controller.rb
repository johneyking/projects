class AdvertisersController < ApplicationController
	def index
		@advertisers = Advertiser.all 
		render :json => @advertisers.to_json
	end
	def selected
		if params[:keyword]
			@advertisers = Advertiser.where(["#{params[:option]} like?","%#{params[:keyword]}%"])
		else 
			@advertisers = Advertiser.all
		end

		
		
	end
end
