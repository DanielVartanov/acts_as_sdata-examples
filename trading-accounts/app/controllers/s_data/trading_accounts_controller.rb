class SData::TradingAccountsController < ApplicationController
  acts_as_sdata :model => TradingAccount,
                :feed => {:author => 'Billing Boss',
                          :path => '/trading_accounts', #what is this parameter for?
                          :title => 'Billing Boss | Trading Accounts' }

end
