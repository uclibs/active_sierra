class OrderRecord < SierraTable
	has_many :bib_record_order_record_links
	has_many :bib_records, through: :bib_record_order_record_links

	has_one :order_view, foreign_key: 'id'
	has_many :varfields, foreign_key: 'record_id'

	self.table_name = 'order_record'
  self.primary_key = 'record_id'
end
