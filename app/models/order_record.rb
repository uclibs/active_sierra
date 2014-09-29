class OrderRecord < SierraTable
  has_one :order_view, foreign_key: 'id'
  has_one :bib_record_order_record_link
  has_one :bib_record, through: :bib_record_order_record_link
  has_one :bib_view, through: :bib_record
  has_many :item_records, through: :bib_record
  has_many :item_views, through: :item_records
  has_many :varfield_views, foreign_key: 'record_id'
  has_one :record_metadata, foreign_key: 'id'

  self.table_name = 'order_record'
  self.primary_key = 'record_id'
end
