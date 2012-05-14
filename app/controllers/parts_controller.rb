class PartsController < ApplicationController
	def index
		@parts = Part.all
	end

	def show
		@part = Part.find(params[:id])
	end

	def edit
		@part = Part.find(params[:id])
		@part.part_traits.build
	end

	def update
		@part = Part.find(params[:id])
		if @part.update_attributes(params[:part])
			flash[:success] = "Part was successfully updated"
			redirect_to @part
		else
			flash[:error] = "There was an error updating the part"
			render 'edit'
		end
	end

end
