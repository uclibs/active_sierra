class ItemView < SierraTable

  has_many :varfield_views, foreign_key: 'record_id'
  has_one :item_record, foreign_key: 'id'
  has_many :bib_records, through: :item_record
  has_many :bib_views, through: :bib_records
  has_many :order_records, through: :bib_records
  has_many :order_views, through: :order_records
  has_one :record_metadata, foreign_key: 'id'

  self.table_name = 'item_view'
  self.primary_key = 'id'

end
