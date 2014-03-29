class ItemView < SierraTable
	has_many :varfield_views, foreign_key: 'record_id'

	self.table_name = 'item_view'
	self.primary_key = 'id'

	def item_record()
		ItemRecord.find(self.id)
	end
end
