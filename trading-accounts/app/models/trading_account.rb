class TradingAccount < ActiveRecord::Base
  acts_as_sdata :instance_id => :name
end