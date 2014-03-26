class ResourceView < ActiveRecord::Base
#	establish_connection "#{Rails.env}_sierra"

	self.table_name = 'resource_view'
	self.primary_key = 'id'

	def resource_record()
		ResourceRecord.find(self.id)
	end
end
