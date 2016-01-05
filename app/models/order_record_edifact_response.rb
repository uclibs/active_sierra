class OrderRecordEdifactResponse < SierraTable
  belongs_to :order_view, foreign_key: 'order_record_id'

  self.table_name = 'order_record_edifact_response'
  self.primary_key = 'id'
end

