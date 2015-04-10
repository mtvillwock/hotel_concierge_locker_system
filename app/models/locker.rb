class Locker < ActiveRecord::Base

  attr_accessor :current_bag

  validates_presence_of :size
end
