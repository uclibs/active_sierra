class BibView < SierraTable
	has_many :varfield_views, foreign_key: 'record_id'
	
	self.table_name = 'bib_view'
	self.primary_key = 'id'

	def bib_record()
		BibRecord.find(self.id)
	end
end
