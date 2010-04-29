class SData::TradingAccountsController < ApplicationController
  before_filter :authentication_required
  acts_as_sdata :model => TradingAccount,
                :scoping => [{:attribute => :created_by_id, 
                           :object => :current_user,
                           :key => :id}],
                :feed => {:author => 'Billing Boss',
                          :path => '/trading_accounts',
                          :title => 'Billing Boss | Trading Accounts',
                          :default_items_per_page => 10,
                          :maximum_items_per_page => 100}

end
