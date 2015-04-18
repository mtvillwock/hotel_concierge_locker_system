FactoryGirl.define do
  factory :locker do
    factory :small_locker do
      size "small"
    end

    factory :medium_locker do
      size "medium"
    end

    factory :large_locker do
      size "large"
    end
  end

  after(:build) do |locker|
    # bag = build(:bag, size: locker.size)
    # ticket = build(:ticket, locker_id: locker.id, bag_id: bag.id)
    # locker.current_bag = bag
  end
end