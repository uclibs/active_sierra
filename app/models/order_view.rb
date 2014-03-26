class OrderView < ActiveRecord::Base
#	establish_connection "#{Rails.env}_sierra"

	self.table_name = 'order_view'
	self.primary_key = 'id'

	def order_record()
		OrderRecord.find(self.id)
	end
end
