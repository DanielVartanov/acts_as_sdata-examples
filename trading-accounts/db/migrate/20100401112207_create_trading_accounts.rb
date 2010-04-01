class CreateTradingAccounts < ActiveRecord::Migration
  def self.up
    create_table :trading_accounts do |t|
      t.string :name
      t.string :website
      t.string :currency
      t.string :taxation_country

      t.timestamps
    end
  end

  def self.down
    drop_table :trading_accounts
  end
end
