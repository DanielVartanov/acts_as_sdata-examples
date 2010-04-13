class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :sage_username
      t.string :email
      t.string :password #simple for testing, no hash/salt
      t.string :language, :limit => 5, :default => "en"
      t.timestamps
      end
  end

  def self.down
    drop_table :users
  end
end
