class OrderViewsController < ApplicationController
	def show
		@order_view = OrderView.find_by_record_num(params[:id])
		@varfields = @order_view.order_record.varfields

		respond_to do |format|
			format.xml { render xml: { varfields: @varfields, order_view: @order_view} }
			format.json { render json: @order_view }
		end
	end
end
