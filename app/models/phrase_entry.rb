class PhraseEntry < SierraTable
#	establish_connection "#{Rails.env}_sierra"

	self.table_name = 'phrase_entry'
	self.primary_key = 'id'
end
