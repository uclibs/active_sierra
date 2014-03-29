class ItemView < SierraTable
	self.table_name = 'item_view'
	self.primary_key = 'id'

	def item_record()
		ItemRecord.find(self.id)
	end

	def var_fields()
		VarfieldView.record('i', self.record_num)
	end
end
