class Api::ProductsController < ApplicationController
	skip_before_action :authenticate
	
	#-------------------------Private Methods-------------------------
	private
 		def collection
   		@products ||= Product.all
 		end

 		def resource
   		@product ||= Product.find(params[:id])
	 	end
end