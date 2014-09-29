class OrderView < SierraTable 
  
  has_many :varfield_views, foreign_key: 'record_id'
  has_one :order_record, foreign_key: 'id'
  has_one :bib_record, through: :order_record
  has_one :bib_view, through: :bib_record
  has_many :item_records, through: :bib_record
  has_many :item_views, through: :item_records  
  has_one :record_metadata, foreign_key: 'id'

  self.table_name = 'order_view'
  self.primary_key = 'id'

end
