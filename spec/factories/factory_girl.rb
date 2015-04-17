FactoryGirl.define do
  factory :bag do
    size %w(small medium large).sample
  end

  factory :locker do
    size %w(small medium large).sample
    # ticket # This causes a stack too deep error
  end

  factory :ticket do
    locker
    bag
  end

end
