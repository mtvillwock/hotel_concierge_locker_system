FactoryGirl.define do
  factory :bag do
    size %w(small medium large).sample
  end
end