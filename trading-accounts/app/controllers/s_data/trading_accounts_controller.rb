class SData::TradingAccountsController < ApplicationController
  acts_as_sdata :model => TradingAccount,
                :feed => {:author => 'Billing Boss',
                          :path => '/trading_accounts',
                          :title => 'Billing Boss | Trading Accounts',
                          :default_items_per_page => 10,
                          :maximum_items_per_page => 100}

end
