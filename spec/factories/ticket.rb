FactoryGirl.define do
  factory :ticket do
    factory :valid_ticket do
      locker
      bag
    end

    # after(:build) do
    # end

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
end
