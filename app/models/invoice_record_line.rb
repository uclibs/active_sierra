class InvoiceRecordLine < SierraTable
  belongs_to :order_view, foreign_key: 'order_record_metadata_id'

  self.table_name = 'invoice_record_line'
  self.primary_key = 'id'
end
