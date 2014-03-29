class ItemRecord < SierraTable
	has_one :item_view, foreign_key: 'id'

	has_many :bib_record_item_record_links
	has_many :bib_records, through: :bib_record_item_record_links

	self.table_name = 'item_record'
	self.primary_key = 'record_id'
end
