class BibRecord < SierraTable
	has_one :order_view, foreign_key: 'id'
	has_many :varfields, foreign_key: 'record_id'

	self.table_name = 'order_record'
  self.primary_key = 'record_id'
end
