class TraitGroupsController < ApplicationController
	def index
		@trait_groups = TraitGroup.all
	end

	def show
		@trait_group = TraitGroup.find(params[:id])
	end
end
