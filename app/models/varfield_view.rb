class VarfieldView < SierraTable

	scope :field_content, ->(content) { where("field_content SIMILAR TO ?", content) }
	scope :marc_tag, ->(marc_tag) { where("marc_tag = ?", marc_tag) }
	scope :marc_ind1, ->(marc_ind1) { where("marc_ind1 = ?", marc_ind1) }
	scope :marc_ind2, ->(marc_ind2) { where("marc_ind2 = ?", marc_ind2) }
	scope :record, ->(type, number) { where("record_type_code = ? and record_num = ?", type, number) }  

	self.table_name = 'varfield_view'
	self.primary_key = 'record_id'
end
