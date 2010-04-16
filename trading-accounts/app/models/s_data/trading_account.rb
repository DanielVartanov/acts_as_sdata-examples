class SData::TradingAccount < Customer
  acts_as_sdata :instance_id => :name, :content => :sdata_content

  def contacts
    SData::Contact.find(:all, :conditions => {:customer_id => self.id})
  end

  def sdata_content
    "Customer ##{self.id}: #{self.name}"
  end
  
  # rough spec implementation suggestions:
  # not yet implemented -eugene
  # [:expand] - how by default child objects will be rendered. Priorities are
  #     :none - do not list individual objects
  #     :link - list urls for individual objects but not their attributes or associations
  #     :embed - list urls for individual objects including their attributes but not associations
  #     :embed_with_associations - list urls for individual objects including their attributes and associations
    
  def payload_map(opts={})
    {
      :name               => {:value => self.name,              :priority => 4}, #test case for single string
      :website            => {:value => self.website,           :priority => 1},
      :currency           => {:value => self.currency,          :priority => 2},
      :taxation_country   => {:value => self.taxation_country,  :priority => 2},
      :created_by_id      => {:value => self.created_by_id,     :priority => 3}, #test case for single integer
      :address1           => {:value => self.address1,          :priority => 2},
      :address2           => {:value => self.address2,          :priority => 2},
      :city               => {:value => self.city,              :priority => 2},
      :province_state     => {:value => self.province_state,    :priority => 2},
      :postalcode_zip     => {:value => self.postalcode_zip,    :priority => 2},
      :country            => {:value => self.country,           :priority => 2},
      :phone              => {:value => self.phone,             :priority => 1},
      :fax                => {:value => self.fax,               :priority => 1},
      :simply_guid        => {:value => self.simply_guid,       :priority => 4},
      :default_contact    => {:value => self.contacts[0],       :priority => 1}, #test case of single activerecord
      :contacts           => {:value => self.contacts,          :priority => 1, :expand => (opts[:expand] || :link)}, #test case for array of activerecords
      :statuses           => {:value => ['status1', 'status2'], :priority => 1}  #test case for array of strings
    }
  end
end