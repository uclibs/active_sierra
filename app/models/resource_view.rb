class ResourceView < SierraTable
  has_many :varfield_views, foreign_key: 'record_id'
  has_one :resource_record, foreign_key: 'id'

  self.table_name = 'resource_view'
  self.primary_key = 'id'

end
