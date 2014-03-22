class BibRecord < SierraTable
	self.table_name = 'resource_view'
	self.primary_key = 'id'

	def resource_record()
		ResourceRecord.find(self.id)
	end
end
