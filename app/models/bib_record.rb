class BibRecord < SierraTable
  has_one :bib_view, foreign_key: 'id'
  has_many :bib_record_item_record_links
  has_many :item_records, through: :bib_record_item_record_links
  has_many :item_views, through: :item_records
  has_many :bib_record_order_record_links
  has_many :order_records, through: :bib_record_order_record_links
  has_many :order_views, through: :order_records
  has_many :varfield_views, foreign_key: 'record_id'
  has_one :record_metadata, foreign_key: 'id'

  self.table_name = 'bib_record'
  self.primary_key = 'record_id'
end
