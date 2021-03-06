class President < ActiveRecord::Base
  validates_presence_of :order
  validates_uniqueness_of :order, :scope => [:country]

  acts_as_sdata :title => lambda { "#{last_name}, #{first_name}" },
                :summary => lambda { "#{last_name}, #{first_name} (#{born_at}-#{died_at})" },
                :instance_id => :last_name
end