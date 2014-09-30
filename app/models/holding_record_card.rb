class HoldingRecordCard < SierraTable
  belongs_to :holding_record, foreign_key: 'holding_record_id'
  belongs_to :holding_view, foreign_key: 'holding_record_id'

  has_one :holding_record_cardlink, foreign_key: 'holding_record_card_id'

  self.primary_key = 'id'
  self.table_name = 'holding_record_card'
end