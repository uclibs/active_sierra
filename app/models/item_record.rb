class ItemRecord < SierraTable

  has_one :item_view, foreign_key: 'id'
  has_many :bib_record_item_record_links
  has_many :bib_records, through: :bib_record_item_record_links
  has_many :bib_views, through: :bib_records
  has_many :varfield_views, foreign_key: :record_id
  has_many :order_records, through: :bib_records
  has_many :order_views, through: :order_records

  self.table_name = 'item_record'
  self.primary_key = 'record_id'

end
