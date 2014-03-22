class ResourceViewsController < ApplicationController
	def index
		@resource_views = ResourceView.all

		respond_to do |format|
			format.xml { render xml: @resource_views }
			format.json { render json: @resource_views }
		end
	end


	def show
		@resource_view = ResourceView.find_by_record_num(params[:id])

		respond_to do |format|
			format.xml { render xml: @resource_view }
			format.json { render json: @resource_view }
		end
	end
end
