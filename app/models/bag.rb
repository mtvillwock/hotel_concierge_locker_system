class Bag < ActiveRecord::Base
  # belongs_to :transaction

  validates :size, inclusion: { in: %w(small medium large),
    message: "please use small, medium, or large as values" }
end
