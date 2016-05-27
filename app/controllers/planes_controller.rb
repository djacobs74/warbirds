class PlanesController < ApplicationController

	def index
		@planes = Plane.all
	end

	def new
		@plane = Plane.new
	end

	def create
		Plane.create(plane_params)
		redirect_to root_path
	end

	def plane_params
    params.require(:plane).permit(:name)
  end

end
