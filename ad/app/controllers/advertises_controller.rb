class AdvertisesController < ApplicationController
	
    
    def index

		@advertises = Advocate.all.select("name")
		render :json =>@advertises
	end
   

    protected

  
end


