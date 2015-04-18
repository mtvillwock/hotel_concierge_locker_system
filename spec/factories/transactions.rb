# FactoryGirl.define do
#   factory :transaction do
#     factory :valid_transaction do
#       bag
#       locker
#       ticket
#     end

#     factory :invalid_transaction do
#       # bag nil
#       # locker nil
#       # ticket nil
#       # should this just be a single invalid transaction?
#       factory :transaction_without_bag do
#         bag nil
#       end
#       factory :transaction_without_locker do
#         locker nil
#       end
#       factory :transaction_without_ticket do
#         ticket nil
#       end
#     end
#   end
# end
