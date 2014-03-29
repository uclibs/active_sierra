class ResourceView < SierraTable
	has_many :varfield_views, foreign_key: 'record_id'

	self.table_name = 'resource_view'
	self.primary_key = 'id'

	def resource_record()
		ResourceRecord.find(self.id)
	end
end
