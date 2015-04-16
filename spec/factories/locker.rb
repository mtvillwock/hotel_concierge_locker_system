FactoryGirl.define do
  factory :locker do
    size [%w(small medium large).sample]
    ticket
  end
end
