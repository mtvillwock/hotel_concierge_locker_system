class Locker < ActiveRecord::Base
  attr_accessor :current_bag

  # belongs_to :transaction
  has_one :ticket

  validates :size, inclusion: { in: %w(small medium large),
    message: "please use small, medium, or large as values" }
end
