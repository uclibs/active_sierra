class ResourceRecord < SierraTable
  has_one :resource_view, foreign_key: 'id'
  has_many :varfield_views, foreign_key: 'record_id'
  has_one :record_metadata, foreign_key: 'id'

  self.table_name = 'resource_record'
  self.primary_key = 'record_id'
end
