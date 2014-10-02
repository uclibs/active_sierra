class HoldingRecord < SierraTable
  has_many :bib_record_holding_record_links
  has_many :bib_records, through: :bib_record_holding_record_links
  has_many :bib_views, through: :bib_records

  has_one :holding_record_card, foreign_key: 'holding_record_id'

  has_many :varfield_views, foreign_key: 'record_id'
  has_one :record_metadata, foreign_key: 'id'

  def bib_record
  	self.bib_records.first
  end

  def bib_view
  	self.bib_views.first
  end

  self.table_name = 'holding_record'
  self.primary_key = 'id'
end