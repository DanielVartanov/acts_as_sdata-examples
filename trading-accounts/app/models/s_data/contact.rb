class SData::Contact < Contact
  acts_as_sdata :instance_id => :name, :content => :sdata_content

  def trading_account
    SData::TradingAccounts.find(self.trading_account_id)
  end
  
  def trading_account_id
    self.customer_id
  end
  
  def sdata_content
    "Contact ##{self.id}: #{self.first_name} #{self.last_name}"
  end
  
  def payload_map(opts={})
    {
      :first_name => {:value => self.first_name, :precedence => 3},
      :last_name  => {:value => self.last_name,  :precedence => 3},
      :email      => {:value => self.email,      :precedence => 4},
      :phone      => {:value => self.phone,      :precedence => 5}
    }
  end
end