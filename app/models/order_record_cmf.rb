class OrderRecordCmf < SierraTable

  ## Key to fund_master table is stored as a string here, 
  # and an integer at the destination, 
  # so we're gathering these with this function
  def fund
    (FundMaster.where("code_num = ?", self.fund_code.to_i).collect {|o| o.code}).last
  end

  self.table_name = 'order_record_cmf'
  self.primary_key = 'id'
end