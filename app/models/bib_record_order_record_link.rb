class BibRecordOrderRecordLink < SierraTable 
  belongs_to :order_record, foreign_key: 'order_record_id'
  belongs_to :bib_record, foreign_key: 'bib_record_id'

  self.table_name = 'bib_record_order_record_link'
end
