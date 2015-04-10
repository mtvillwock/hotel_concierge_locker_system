class Ticket < ActiveRecord::Base
  validates_presence_of :locker_id, :bag_id
end
