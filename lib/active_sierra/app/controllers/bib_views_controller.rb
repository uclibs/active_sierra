class BibViewsController < ApplicationController
	def show
		@bib_view = BibView.find_by_record_num(params[:id])
		@varfields = @bib_view.bib_record.varfields

		respond_to do |format|
			format.xml { render xml: { varfields: @varfields, bib_view: @bib_view} }
			format.json { render json: @bib_view }
		end
	end
end
