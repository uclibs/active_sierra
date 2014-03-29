class OrderView < SierraTable 
	has_many :varfield_views, foreign_key: 'record_id'

	self.table_name = 'order_view'
	self.primary_key = 'id'

	def order_record()
		OrderRecord.find(self.id)
	end

	def first_bib_view()
		# "first" because each order may have more than one linked bib record
		self.order_record.bib_records[0].bib_view
	end

	def all_bib_views()
		list = Array.new
		self.order_record.bib_records.each { |b| list << b.bib_view }
		list
	end
end
