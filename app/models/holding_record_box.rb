class HoldingRecordBox < SierraTable
  belongs_to :holding_record_cardlink, foreign_key: 'holding_record_cardlink_id'
  has_one :holding_record_card, through: :holding_record_cardlink
  has_one :holding_record, through: :holding_record_card
  has_one :holding_view, through: :holding_record_card
  
  self.primary_key = 'id'
  self.table_name = 'holding_record_box'
end