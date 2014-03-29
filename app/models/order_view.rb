class OrderView < SierraTable 
#	establish_connection "#{Rails.env}_sierra"

	self.table_name = 'order_view'
	self.primary_key = 'id'

	def order_record()
		OrderRecord.find(self.id)
	end

	def var_fields()
		VarfieldView.record('o', self.record_num)
	end
end
