class PartsController < ApplicationController
	def index
		@parts = Part.all
	end

	def show
		@part = Part.find(params[:id])
	end

	def edit
		@part = Part.find(params[:id])
		@all_trait_groups = TraitGroup.all.map { |group| [group.id, group.name] }
	end

	def update
		@part = Part.find(params[:id])

		respond_to do |format|
			if @part.update_attributes(params[:part])
				format.html { redirect_to @part, :success => "Part was successfully updated" }
				format.json { respond_with_bip(@part) }
			else
				format.html { render 'edit' }
				format.json { respond_with_bip(@part) }
			end
		end
	end

end
