class BibRecordItemRecordLink < SierraTable 
  belongs_to :item_record, foreign_key: 'item_record_id'
  belongs_to :bib_record, foreign_key: 'bib_record_id'

  self.table_name = 'bib_record_item_record_link'
end
