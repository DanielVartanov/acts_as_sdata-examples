class TradingAccountsController < ApplicationController
  acts_as_sdata :model => TradingAccount,
                :feed => { :id => 'urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6',
                          :author => 'Sage',
                          :path => '/trading_accounts',
                          :title => 'Trading accounts' }
end