class BibRecord < SierraTable

	has_one :bib_view, foreign_key: 'id'
	has_many :bib_record_item_record_links
	has_many :item_records, through: :bib_record_item_record_links
	has_many :varfields, foreign_key: 'record_id'

	self.table_name = 'bib_record'
  self.primary_key = 'record_id'
end
