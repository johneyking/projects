class AdvocatesController < ApplicationController
	def index

		@advocate=Advocate.find_by_name(params[:login_name])
		if params[:login_pass] == @advocate.password
		
                              render :text => "yes"
		else
		     render :text => "no"

		end
	end
	def new
                   
	end
	def create
		@advocate = Advocate.new(:name => params[:name])
		@advocate.save
	end
end
