class Ticket < ActiveRecord::Base
  belongs_to :bag
  belongs_to :locker
  belongs_to :transaction

  validates_presence_of :locker_id, :bag_id
  validates :locker_id, numericality: { only_integer: true }
  validates :bag_id, numericality: { only_integer: true }
end
