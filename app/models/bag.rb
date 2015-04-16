class Bag < ActiveRecord::Base
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size, please use small, medium, or large as values" }
end
