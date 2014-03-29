class ItemView < SierraTable
	has_many :varfield_views, foreign_key: 'record_id'

	self.table_name = 'item_view'
	self.primary_key = 'id'

	def item_record()
		ItemRecord.find(self.id)
	end

	def first_bib_view()
		# "first" because each item may have more than one linked bib record
		self.item_record.bib_records[0].bib_view
	end

	def all_bib_views()
		list = Array.new
		self.item_record.bib_records.each { |b| list << b.bib_view }
		list
	end
end
