class BibView < SierraTable
	
	self.table_name = 'bib_view'
	self.primary_key = 'id'

	def bib_record()
		BibRecord.find(self.id)
	end

	def var_fields()
		VarfieldView.record('b', self.record_num)
	end
end
