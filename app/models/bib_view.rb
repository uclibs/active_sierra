class BibView < SierraTable
	has_many :varfield_views, foreign_key: 'record_id'
	
	self.table_name = 'bib_view'
	self.primary_key = 'id'

	def bib_record()
		BibRecord.find(self.id)
	end

  def items()
    items = Array.new
    self.bib_record.item_records.each { |i| items << i.item_view }
    items
  end

	def orders()
    orders = Array.new
    self.bib_record.order_records.each { |o| orders << o.order_view }
    orders
  end
end
