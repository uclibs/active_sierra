class SubfieldView < SierraTable
  scope :content, ->(content) { where("content SIMILAR TO ?", content) }
  scope :marc_tag, ->(marc_tag) { where("marc_tag = ?", marc_tag) }
  scope :marc_ind1, ->(marc_ind1) { where("marc_ind1 = ?", marc_ind1) }
  scope :marc_ind2, ->(marc_ind2) { where("marc_ind2 = ?", marc_ind2) }
  scope :record_id, ->(number) { where("record_id = ?", number) }
  scope :record_number, ->(type, number) { where("record_type_code = ? and record_num = ?", type, number) }     
  scope :tag, ->(tag) { where("tag = ?", tag) }
  scope :field_type_code, ->(code) { where("field_type_code = ?", code) }
  scope :record_type_code, ->(code) { where("record_type_code = ?", code) }

  self.table_name = 'subfield_view'
  self.primary_key = 'record_id'
end
