class PlanesController < ApplicationController

	def index
		@planes = Plane.all
	end

	def new
		@plane = Plane.new
	end

	def create
		Plane.create(name: params[:name])
		redirect_to root_path
	end





	

end
