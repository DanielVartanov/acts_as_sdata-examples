class AddCountryToPresidents < ActiveRecord::Migration
  def self.up
    add_column :presidents, :country, :string
  end

  def self.down
    remove_column :presidents, :country
  end
end
