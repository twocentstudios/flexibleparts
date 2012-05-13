class PartsController < ApplicationController
	def index
		@parts = Part.all
	end

	def show
		@part = Part.find(params[:id])
	end

	def edit
		@part = Part.find(params[:id])
	end

	def update
		@part = Part.find(params[:id])
		if @part.update_attributes(params[:part])
			redirect_to @part, :success => "Part was successfully updated"
		else
			render 'edit'
		end
	end

end
