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
		if @part.update_attributes(params[:part])
			flash[:success] = "Part updated"
		else
			render 'edit'
		end
	end
end
