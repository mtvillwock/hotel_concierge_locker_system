FactoryGirl.define do
  factory :ticket do
    locker
    bag
  end

  after(:build) do
    locker = build(:locker, size: %w(small medium large).sample)
    bag = build(:bag, size: locker.size)
    self.update_attributes(locker_id: locker.id, bag_id: bag.id)
  end

  factory :invalid_ticket do
    # locker nil
    # bag nil
    # should this just be a single invalid ticket?
    factory :ticket_without_locker do
      locker nil
    end
    factory :ticket_without_bag do
      bag nil
    end
  end
end
