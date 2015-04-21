FactoryGirl.define do
  factory :bag do

    factory :small_bag do
      size "small"
    end

    factory :medium_bag do
      size "medium"
    end

    factory :large_bag do
      size "large"
    end

    factory :invalid_bag do
      size nil
    end
  end
end
