class BibRecord < SierraTable
	self.table_name = 'bib_view'
	self.primary_key = 'id'

	def bib_record()
		BibRecord.find(self.id)
	end
end
