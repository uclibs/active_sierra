class HoldingRecordCardlink < SierraTable
  belongs_to :holding_record_card, foreign_key: 'holding_record_card_id'
  has_one :holding_record, through: :holding_record_card
  has_one :holding_view, through: :holding_record_card

  has_many :holding_record_boxes, foreign_key: 'holding_record_cardlink_id'

  self.table_name = 'holding_record_cardlink'
  self.primary_key = 'id'
end