class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :website
      t.string :currency
      t.string :taxation_country
      t.integer :created_by_id
      t.integer :default_contact_id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :province_state
      t.string :postalcode_zip
      t.string :country
      t.string :phone
      t.string :fax
      t.string :simply_guid
      t.string :language, :limit => 5, :default => "en"
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
