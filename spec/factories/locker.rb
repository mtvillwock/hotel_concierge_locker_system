FactoryGirl.define do
  factory :locker do
    size %w(small medium large).sample
    # ticket # This causes a stack too deep error
  end
end