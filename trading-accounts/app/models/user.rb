class User < ActiveRecord::Base
  has_many :customers, :foreign_key => 'created_by_id'
end