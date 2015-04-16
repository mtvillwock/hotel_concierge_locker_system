class Ticket < ActiveRecord::Base
  has_one :bag
  has_one :locker

  validates_presence_of :locker_id, :bag_id
  validates :locker_id, numericality: { only_integer: true }
  validates :bag_id, numericality: { only_integer: true }
end
