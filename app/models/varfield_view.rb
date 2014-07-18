class VarfieldView < SierraTable
  has_one :item_view
  has_many :subfields, foreign_key: 'varfield_id'

  scope :field_content, ->(content) { where("field_content SIMILAR TO ?", content) }
  scope :marc_tag, ->(marc_tag) { where("marc_tag = ?", marc_tag) }
  scope :marc_ind1, ->(marc_ind1) { where("marc_ind1 = ?", marc_ind1) }
  scope :marc_ind2, ->(marc_ind2) { where("marc_ind2 = ?", marc_ind2) }
  scope :record_id, ->(number) { where("record_id = ?", number) }
  scope :record_number, ->(type, number) { where("record_type_code = ? and record_num = ?", type, number) }  
  scope :varfield_type_code, ->(code) { where("varfield_type_code = ?", code) }
  scope :record_type_code, ->(code) { where("record_type_code = ?", code) }

  self.table_name = 'varfield_view'
  self.primary_key = 'id'

  def clean()
    return nil if self.nil?
    field = self["field_content"].gsub(/\|[af]/, '')
    field.gsub(/\|[b-z]/, ' ')
  end
end
