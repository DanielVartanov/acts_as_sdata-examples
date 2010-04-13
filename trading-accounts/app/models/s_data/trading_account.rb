class SData::TradingAccount < Customer
  acts_as_sdata :instance_id => :name, :content => :sdata_content
  def sdata_content
    "Customer ##{self.id}: #{self.name}"
  end
end