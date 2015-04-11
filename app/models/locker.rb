class Locker < ActiveRecord::Base
  attr_accessor :current_bag

  has_one :ticket

  validates_presence_of :size
end
