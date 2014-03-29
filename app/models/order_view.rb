class OrderView < SierraTable 
	has_many :varfield_views, foreign_key: 'record_id'

	self.table_name = 'order_view'
	self.primary_key = 'id'

	def order_record()
		OrderRecord.find(self.id)
	end
end
