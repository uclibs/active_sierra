class HoldingView < SierraTable
  has_one :holding_record, foreign_key: 'id'
  has_many :bib_views, through: :holding_record
  has_many :bib_records, through: :holding_record
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