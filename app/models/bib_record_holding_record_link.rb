class BibRecordHoldingRecordLink < SierraTable 
  belongs_to :holding_record, foreign_key: 'holding_record_id'
  belongs_to :bib_record, foreign_key: 'bib_record_id'

  self.table_name = 'bib_record_holding_record_link'
end
