class SData::TradingAccount < Customer
  acts_as_sdata :instance_id => :id, :content => :sdata_content, :link => :simply_guid

  def contacts
    SData::Contact.find(:all, :conditions => {:customer_id => self.id})
  end

  def sdata_content
    "Trading Account ##{self.id}: #{self.name}"
  end
  
  #valid values for precedence are 2 (most important) to 99 (least important). recommended values:
  #2: foreign keys, name, other unique ids (such as guid)
  #3: important attributes associated with class (e.g. address fields for customer)
  #4: secondary attributes associated with class (e.g. currency for customer)
  #5: nonessential associations (e.g. contacts for customer)
  #value '1' is reserved for primary key which will always be included and thus should not be specified here
  def payload_map(opts={})
    {
      :name                => {:value => self.name,              :precedence => 2}, #test case for single string
      :website             => {:value => self.website,           :precedence => 5},
      :currency            => {:value => self.currency,          :precedence => 4},
      :taxation_country    => {:value => self.taxation_country,  :precedence => 4},
      :created_by_id       => {:value => self.created_by_id,     :precedence => 2}, #test case for single integer
      :address1            => {:value => self.address1,          :precedence => 3},
      :address2            => {:value => self.address2,          :precedence => 3},
      :city                => {:value => self.city,              :precedence => 3},
      :province_state      => {:value => self.province_state,    :precedence => 3},
      :postalcode_zip      => {:value => self.postalcode_zip,    :precedence => 3},
      :country             => {:value => self.country,           :precedence => 3},
      :phone               => {:value => self.phone,             :precedence => 4},
      :fax                 => {:value => self.fax,               :precedence => 5},
      :simply_guid         => {:value => self.simply_guid,       :precedence => 2},
      :default_contact     => {:value => self.contacts[0],       :precedence => 5}, #test case of single activerecord
      :contacts            => {:value => self.contacts,          
                               :precedence => 5, 
                               :resource_collection => {:url => 'contacts', :parent_key => 'trading_account_id'}}, #test case for array of activerecords
      :statuses            => {:value => ['status1', 'status2'], :precedence => 5},  #test case for array of strings
#      :simple_object_hash  => {:value => {:simple_object_key => 'simple_object_value'}, :precedence => 1}, #test case for hash
#      :complex_object_hash => {:value => 
#                                 {:complex_object_key_1 => 'complex_object_key_1', 
#                                   :contacts => self.contacts, 
#                                   :single_contact => self.contacts[0]
#                                 },
#                               :precedence => 1
#                              } #test case for complex hash
    }
  end
end