class Transaction < ActiveRecord::Base
  has_one :bag
  has_one :locker
  has_one :ticket
end
