class ItemRecord < SierraTable
  has_one :item_view, foreign_key: 'id'
  has_many :bib_record_item_record_links
  has_many :bib_records, through: :bib_record_item_record_links
  has_many :bib_views, through: :bib_records
  has_many :varfield_views, foreign_key: :record_id
  has_many :order_records, through: :bib_records
  has_many :order_views, through: :order_records
  has_one :record_metadata, foreign_key: 'id'
  has_one :item_record_property, foreign_key: 'item_record_id'
  has_one :checkout, foreign_key: 'item_record_id'

  self.table_name = 'item_record'
  self.primary_key = 'record_id'
end
