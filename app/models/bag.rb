class Bag < ActiveRecord::Base
  validates :size, inclusion: { in: %w(small medium large),
    message: "please use small, medium, or large as values" }
end
